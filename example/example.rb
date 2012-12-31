CONSUMER_KEY        = ''
CONSUMER_SECRET     = ''
ACCESS_TOKEN        = ''
ACCESS_TOKEN_SECRET = ''
API_URL             = 'http://api.twitter.com/1.1/statuses/update.json'

tweet       = "hello twitter world from mruby-oauht"
ex_headers  = {'Content-Type' => 'application/x-www-form-urlencoded'}
twitter     = OAuth.new(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
response    = twitter.post(API_URL, {:status => msg}, ex_headers)

if response.code.to_i == 200
  puts "tweet success: #{msg}"
else
  puts "tweet failed: #{msg}: bellow response"
  p response
end
