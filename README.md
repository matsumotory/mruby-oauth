# oauth Class for mruby
refactored oauth of iij/mruby using mruby-uv and mruby-http.

depend on mruby-uv, mruby-http, mruby-simplehttp, mruby-httprequest, mruby-digest, mruby-pack

## install by mrbgems
```bash
git clone git://github.com/matsumoto-r/mruby-oauth.git
cp -pr mruby-oauth ${MRUBY_ROOT}/mrbgems/g/.
echo mruby-oauth >> ${MRUBY_ROOT}/mrbgems/GEMS.active
cd ${MRUBY_ROOT}
make
./bin/mruby ${MRUBY_ROOT}/mrbgems/g/mruby-oauth/example/example.rb
```

## example

```ruby
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
```

## License
This software is licensed under the same license terms of the original mruby.

