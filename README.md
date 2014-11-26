# Ruboty::Bestgems

An Ruboty Handler + Actions to output Bestgems downloads or rank.

[![Gem Version](https://badge.fury.io/rb/ruboty-bestgems.svg)](http://badge.fury.io/rb/ruboty-bestgems)

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-bestgems'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-bestgems


## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|total_downloads|/total_downloads (?&lt;gem_name&gt;.+)\z/|latest total_download count|
|daily_downloads|/daily_downloads (?&lt;gem_name&gt;.+)\z/|latest daily_download count|
|total_ranking|/total_ranking (?&lt;gem_name&gt;.+)\z/|latest total_ranking|
|daily_ranking|/daily_ranking (?&lt;gem_name&gt;.+)\z/|latest daily_ranking|

## Usage
### total_downloads
* latest total_download count

~~~
>ruboty total_downloads ruboty-megen
>356
~~~

### daily_downloads
* latest daily_download count

~~~
>ruboty daily_downloads ruboty-megen
>10
~~~

### total_ranking
* latest total_ranking

~~~
>ruboty total_ranking ruboty-megen
>84052
~~~

### daily_ranking
* latest daily_ranking

~~~
>ruboty daily_ranking ruboty-megen
>12021
~~~

## ENV

|Name|Description|
|:--|:--|
|--|--|

## Dependency

|Name|Description|
|:--|:--|
|BestGems API version 1|[BestGems API version 1](https://github.com/xmisao/bestgems.org/wiki/BestGems-API-v1-Specification)|

## Contributing

1. Fork it ( https://github.com/tbpgr/ruboty-bestgems/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
