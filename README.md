# Mpluck

Simple AR patch to allow for easy multi-plucking in Rails 2 and 3.
This does not use the code from Rails 4 and you have to explicitly call
'multipluck' or 'mpluck'. If you want to just call 'pluck' for Rails 4-like
functionality, check out https://github.com/jzaleski/multipluck

Also adds helper method for grouping plucked results.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mpluck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mpluck

## Usage

Foo.where(bar: "baz").mpluck(:id, :qux, :woz)
`=> [{id: 1, quz: "val", wox: "val"}, {id: 2, quz: "val", wox: "val"}]`

also added a grouping option

Foo.where(bar: "baz").grouped_mpluck(:id, [:qux, :woz])
`=> {1 => {quz: "val", wox: "val"}, 2 => {quz: "val", wox: "val"}}`

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mpluck/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
