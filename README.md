# TomosiaWallhereCrawl

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tomosia_wallhere_crawl`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tomosia_wallhere_crawl'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tomosia_wallhere_crawl

## Usage
```
NOTE: key = "tag" , destination: "url saving" , max :number image

- Crawl all image in tag!
$ tomosia_wallhere_crawl crawl "key" --destination " "
ex: $ tomosia_wallhere_crawl crawl "aaa" --destination "/home/tung/Desktop/img/"

- Crawl images in tag with number of images!
$ tomosia_wallhere_crawl crawl "key" --destination " " --max
ex: $  tomosia_wallhere_crawl crawl "aaa" --destination "/home/tung/Desktop/img/" --max=100

- File save info images of tag in "destination"
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tomosia_wallhere_crawl. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/tomosia_wallhere_crawl/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TomosiaWallhereCrawl project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tomosia_wallhere_crawl/blob/master/CODE_OF_CONDUCT.md).
