# BringBackSnowman

You know you miss this little guy: ☃.

If you don't know what that's about, [this blog post explains what's
up](http://intertwingly.net/blog/2010/07/29/Rails-and-Snowmen).

With the impending release of Rails 4, I was thinking about fun things in the
history of Rails, and thought it'd be fun to bring him back.

## Installation

Add this line to your application's Gemfile:

    gem 'bring_back_snowman'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bring_back_snowman

## Usage

Just do it, and your forms will submit `_snowman=☃` to ensure that your data
is encoded in UTF-8.

It is configurable, if you prefer something else. Add this to your
`application.rb`:

```
config.snowman = {:emoji => "😢"}
```

You may also need to add the 'magic comment' at the top of the file:

```
# encoding: UTF-8
```

Please remember that if you don't use something that's UTF-8, this won't
actually work to fix the bug.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
