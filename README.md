# EverylogWrapper

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/everylog_wrapper`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add everylog_wrapper

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install everylog_wrapper

Set an environment variable called `EVERYLOG_KEY` which should contain your Everylog API key.

## Usage

The `project_id`, `title`, `summary` and `body` are mandatory fields, while `tags`, `link` and `push` are optional.

```
EverylogWrapper.send_notification(
        project_id: 'myProject'
        title: 'Lorem',
        summary: 'Lorem ipsum',
        body: 'Lorem ipsum dolor sit amet'
      )
```

### Fields and their data types:
 - project_id - String
 - title - String
 - summary - String
 - body - String
 - tags - Array
 - link - String
 - push - Boolean

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/daktari01/everylog_wrapper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/everylog_wrapper/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EverylogWrapper project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/everylog_wrapper/blob/main/CODE_OF_CONDUCT.md).
