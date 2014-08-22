# UglifierWithSourceMaps

Create sourcemaps when compressing assets in your Rails 3.2 applications.

This gem uses Uglifier to create sourcemaps for your concatenated javascripts in Rails 3.2.x. It is meant to use as a replacement javascript compressor.

_Note: This gem is for Rails 3.2.x_

## Installation

Add this line to your application's Gemfile:

    gem 'uglifier_with_source_maps'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uglifier_with_source_maps

## Usage

In your rails applications environment configuration add this:

```
config.assets.js_compressor = :uglifier_with_source_maps
```

If you need to pass options to uglifier:

```
config.assets.js_compressor = UglifierWithSourceMaps::Compressor.new({
  output: {
    beautify: true, indent_level: 2, comments: :none
    }
  }) if defined? ::UglifierWithSourceMaps
```


Your assets will be built as normal, and maps concatenated sources will be provided as well in asset\_path/maps and asset\_path/sources

Example
rake assets:precompile

```
# application.js
rake assets:precompile

# -> public/assets/application-ab258eecc169e5febb9da42389481bff.js
# -> public/assets/maps/application-ab258eecc169e5febb9da42389481bff.map
# -> public/assets/sources/application-ab258eecc169e5febb9da42389481bff.js

```

## Dependencies
* uglifier    >= 2.5
* sprockets   ~> 2.2.2
* actionpack  ~> 3.2.19

## Contributing

1. Fork it ( https://github.com/[my-github-username]/uglifier_with_source_maps/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
