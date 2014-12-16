# GeoContrast
GeoContrast allows you to transform a simple text field in a Google Maps Autocomplete search field, bringing the name of streets, cities or an establishments. 

## Installation
Install it yourself as:

    $ gem install geo_contrast

Or add this line to your application's Gemfile:

```ruby
gem 'geo_contrast'
```

And then execute:

    $ bundle
    
## Usage
In `application.js` insert the following line:

```javascript
//= require geo_contrast
```

Inside `application.html.erb` call the Google Places Autocomplete:

```erb
<%= javascript_include_tag 'application', '//maps.googleapis.com/maps/api/js?libraries=places','data-turbolinks-track' => true %>
```

Then, inside your form just add a class (or id) to your input field and inside `application.js` call the `GeoContrast` initialize function:

```javascript
$('.your_class').geoContrast();
```

## Customizing the results

You have a few options to customize the return address from Google.
You can specify the kind of search with this options:

### Format
With this it returns the short address. Eg. "San Francisco":
```javascript
$('.your_class').geoContrast({format: "short"});
```
This one returns the long version of the address. Eg. "San Francisco, California, United States of America":
```javascript
$('.your_class').geoContrast({format: "long"});
```

### Gmaps Options

If you want to search just for cities, for example, you can pass a option to specify this:
```javascript
$('.your_class').geoContrast({format: "long", options_gmaps: {types: ['(cities)']}});
```

The options are:
1. 'geocode' -> For addresses.
2. '(regions)' -> For administrative regions.
3. 'establishment' -> For businesses.
4. '(cities)' -> For just city names.

## Contributing
1. Fork it ( https://github.com/[my-github-username]/geo_contrast/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
