CONSUMER_KEY        = ''
CONSUMER_SECRET     = ''
ACCESS_TOKEN        = ''
ACCESS_TOKEN_SECRET = ''
GET_API_URL         = 'http://api.twitter.com/1.1/statuses/user_timeline.json?count=1'

twitter = OAuth.new(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
response = twitter.get(GET_API_URL)

if response.code.to_i == 200
  data = JSON::parse(response.body)
  puts "#{data[0]["user"]["screen_name"]}'s tweet:  #{data[0]["text"]}"
else
  puts response.body
  raise "Request failed: " + response.code.to_s
end
