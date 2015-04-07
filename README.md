# AdnHashtagPhotos

This gem creates photo gallery where all photos has one hashtag in common.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'adn_hashtag_photos'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adn_hashtag_photos

## Usage

Let's say we wan't make gallery for hashtag IguanaLister

```ruby
require 'rubygems'
require 'bundler/setup'
require 'adn_hashtag_photos'

# Initialize Gallery
builder = AdnHashtagPhotos::GalleryBuilder.new 'IguanaLister'

# Get the photos data
builder.photos
```

[Screenshot from example Sinatra app](https://files.app.net/jz4mp52py.png)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/adn_hashtag_photos/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
