# mruby-oauth 
oauth Class for mruby

refactored oauth of iij/mruby using mruby-uv and mruby-http.

depend on mruby-http, mruby-httprequest, mruby-digest, mruby-pack

## install by mrbgems
 - add conf.gem line to `build_config.rb`
```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :git => 'https://github.com/matsumoto-r/mruby-oauth.git'
end
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
response    = twitter.post(API_URL, {:status => tweet}, ex_headers)

if response.code.to_i == 200
  puts "tweet success: #{tweet}"
else
  puts "tweet failed: #{tweet}: bellow response"
  p response
end
```

## License
This software is licensed under the same license terms of the original mruby.

