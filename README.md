# Win32::SSPI

win32-sspi implements bindings to Win32 SSPI functions, focused on
authentication to a proxy server over HTTP.

## Installation

win32-sspi is a bundled gem of the ruby standard library, so that the
latest version on the ruby release date is preinstalled on Windows.
Other versions of the gem can be installed in addition like so:

Install the gem and add to the application's Gemfile by executing:

    $ bundle add win32-sspi

If bundler is not being used to manage dependencies, install the gem
by executing:

    $ gem install win32-sspi

## Usage

```ruby
require "net/http"

proxy_arguments = [proxy_server,] # ...
http = Net::HTTP.new(hostname, nil, *proxy_arguments)
http.instance_variable_set(:@sspi_enabled, true)

req = Net::HTTP::Get.new('/todos/1')
http.request(req)
```

See [Proxy Server in Net::HTTP] for proxy arguments.

[Proxy Server in Net::HTTP]: https://docs.ruby-lang.org/en/master/Net/HTTP.html#class-Net::HTTP-label-Proxy+Server

## Development

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will
create a git tag for the version, push git commits and the created
tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on [GitHub].

[GitHub]: https://github.com/ruby/win32-sspi
