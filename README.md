# StringTransformer [![Gem Version](https://badge.fury.io/rb/string_transformer.svg)](https://badge.fury.io/rb/string_transformer)

StringTransformer encrypts and decrypts strings encrypted with StringTransformer. This is a simple gem to generate a random string,  NOT for security purposes.

You can use this gem in many ways, be creative! If you have an idea help me make it better! :)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_transformer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_transformer

## Usage

Require the gem:

    $ require 'string_transformer'

Encrypt string:

    $ a = 'Hello World'.encrypt

This will return something like this:

`=> "RAKJEb7vWmxBpt1ywB31X1yGftFDzZWYey8z2AJnJrCT_$"`

To decrypt the string:

    $ a.decrypt


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/corasan/string_transformer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
