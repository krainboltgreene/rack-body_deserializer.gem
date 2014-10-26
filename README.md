rack/body_deserializer
--------------------

  - [![Quality](http://img.shields.io/codeclimate/github/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](https://codeclimate.com/github/krainboltgreene/rack-body_deserializer.gem)
  - [![Coverage](http://img.shields.io/codeclimate/coverage/github/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](https://codeclimate.com/github/krainboltgreene/rack-body_deserializer.gem)
  - [![Build](http://img.shields.io/travis-ci/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](https://travis-ci.org/krainboltgreene/rack-body_deserializer.gem)
  - [![Dependencies](http://img.shields.io/gemnasium/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](https://gemnasium.com/krainboltgreene/rack-body_deserializer.gem)
  - [![Downloads](http://img.shields.io/gem/dtv/rack-body_deserializer.svg?style=flat-square)](https://rubygems.org/gems/rack-body_deserializer)
  - [![Tags](http://img.shields.io/github/tag/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](http://github.com/krainboltgreene/rack-body_deserializer.gem/tags)
  - [![Releases](http://img.shields.io/github/release/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](http://github.com/krainboltgreene/rack-body_deserializer.gem/releases)
  - [![Issues](http://img.shields.io/github/issues/krainboltgreene/rack-body_deserializer.gem.svg?style=flat-square)](http://github.com/krainboltgreene/rack-body_deserializer.gem/issues)
  - [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)
  - [![Version](http://img.shields.io/gem/v/rack-body_deserializer.svg?style=flat-square)](https://rubygems.org/gems/rack-body_deserializer)

A middleware for deserializing body of a request based on a mapping.


Using
=====

Add the middleware to the stack with a map of `Content-Type` matching header value to a object that responds to `#dump`:

``` ruby
rack.use(Rack::BodyDeserializer, {
  "*/*" => Oj,
  "application/vnd.blankapi+json; version=#{VERSION}" => Oj,
  "application/json" => Oj
})
```


Installing
==========

Add this line to your application's Gemfile:

    gem "rack-body_deserializer", "~> 1.0"

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install rack-body_deserializer


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Changelog
=========

  - 1.0.0: Initial release


License
=======

Copyright (c) 2014 Kurtis Rainbolt-Greene

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
