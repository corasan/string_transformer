# StringTransformer [![Gem Version](https://badge.fury.io/rb/string_transformer.svg)](https://badge.fury.io/rb/string_transformer)

StringTransformer encrypts and decrypts strings encrypted with StringTransformer. This is a simple gem to modify a string NOT for security purposes.

This is a personal project to learn how to create gems, but you are free to use and contribute to this repo. Again, this gem is not meant for security usage.
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

`=> "4j$k97J<1t4RnxwoW^*tBS7xiLe85OsV$EFrqcb!ZzBD"`

Decrypt string:

    $ a.decrypt


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/corasan/string_transformer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
