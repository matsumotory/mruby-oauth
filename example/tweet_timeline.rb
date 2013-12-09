CONSUMER_KEY        = ''
CONSUMER_SECRET     = ''
ACCESS_TOKEN        = ''
ACCESS_TOKEN_SECRET = ''
GET_API_URL         = 'https://api.twitter.com/1.1/statuses/home_timeline.json?count='

tweet_num = 10
interval = 60
twitter = OAuth.new(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)

new_id = 0
old_id = 0
while
  response = twitter.get(GET_API_URL + tweet_num.to_s)
  if response.code.to_i == 200
    data = JSON::parse(response.body)
    if old_id == 0 || old_id != data[0]["id"].to_i
      new_id = data[0]["id"].to_i
      data.reverse.each do |d|
        if old_id < d["id"].to_i
          puts "[\e[33m#{d["created_at"]}\e[m] \e[36m#{d["user"]["screen_name"]}\e[m: #{d["text"]}"
        end
      end
      old_id = new_id
    end
  else
    p response
    raise "Request failed: " + response.code.to_s
  end
  Random.sleep interval
end
