# CsvOption

'csv_options' is rubygem for determing various options passed to CSV parser. It determine options automatically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csv_option'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv_option

## Usage
  ```ruby
  utils = CsvOption::Utils.new("#{fixture_path}/test.csv")
  ```
  ### Determine column separator:
  ```ruby
  utils.determine_column_separator
  ```
  ### Determine headers of csv file(Assuming the firstline will always be header)
  ```ruby
  utils.parse_headers
  ```
  ### Determing row options
  ```ruby
  utils.determine_row_separator
  ```
## Contributing

1. Fork it ( https://github.com/narutosanjiv/csv_option/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
