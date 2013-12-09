CONSUMER_KEY        = ''
CONSUMER_SECRET     = ''
ACCESS_TOKEN        = ''
ACCESS_TOKEN_SECRET = ''
API_URL             = 'https://api.twitter.com/1.1/statuses/update.json'

tweet       = "test tweet"
ex_headers  = {'Content-Type' => 'application/x-www-form-urlencoded'}
twitter     = OAuth.new(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
response    = twitter.post(API_URL, {:status => tweet}, ex_headers)

if response.code.to_i == 200
  puts "tweet success: #{tweet}"
else
  puts "tweet failed: #{tweet}: bellow response"
  p response
end
