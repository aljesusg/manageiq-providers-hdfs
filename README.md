# manageiq-providers-hdfs

[![Gem Version](https://badge.fury.io/rb/manageiq-providers-hdfs.svg)](http://badge.fury.io/rb/manageiq-providers-hdfs)
[![Build Status](https://travis-ci.org/ManageIQ/manageiq-providers-hdfs.svg)](https://travis-ci.org/ManageIQ/manageiq-providers-hdfs)
[![Code Climate](https://codeclimate.com/github/ManageIQ/manageiq-providers-hdfs.svg)](https://codeclimate.com/github/ManageIQ/manageiq-providers-hdfs)
[![Test Coverage](https://codeclimate.com/github/ManageIQ/manageiq-providers-hdfs/badges/coverage.svg)](https://codeclimate.com/github/ManageIQ/manageiq-providers-hdfs/coverage)
[![Dependency Status](https://gemnasium.com/ManageIQ/manageiq-providers-hdfs.svg)](https://gemnasium.com/ManageIQ/manageiq-providers-hdfs)
[![Security](https://hakiri.io/github/ManageIQ/manageiq-providers-hdfs/master.svg)](https://hakiri.io/github/ManageIQ/manageiq-providers-hdfs/master)

[![Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ManageIQ/manageiq-providers-hdfs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Translate](https://img.shields.io/badge/translate-zanata-blue.svg)](https://translate.zanata.org/zanata/project/view/manageiq-providers-hdfs)

ManageIQ plugin for the Hdfs provider.

## Development

See the section on pluggable providers in the [ManageIQ Developer Setup](http://manageiq.org/docs/guides/developer_setup)


TEMPORAL CONFIGURATION

1. Be in the directory `manageiq`
1. `mkdir plugins`
1. `cd plugins`
1. `git clone git@github.com:aljesusg/manageiq-providers-hdfs`
1. `cd manageiq-providers-hdfs`
1. `ln -s ../../ spec/`
1. `cd ../../`
1. `echo "gem 'manageiq-providers-hdfs', :path => File.expand_path('../manageiq-providers-hdfs', __dir__)" >> Gemfile.dev.rb`
1. `bin/update`

## License

The gem is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
