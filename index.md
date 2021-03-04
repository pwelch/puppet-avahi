# Puppet-Avahi
[![Build Status](https://secure.travis-ci.org/pwelch/puppet-avahi.png)](http://travis-ci.org/pwelch/puppet-avahi)

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with avahi](#setup)
    * [What avahi affects](#what-avahi-affects)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)
    * [Running Tests](#running-tests)

## Overview

Installs and Configures [Avahi](http://avahi.org/) zeroconf networking software.

## Setup

### What avahi affects

* package/service/configuration files for Avahi

## Usage

```ruby
class { 'avahi::init' }
```

## Limitations

Only Supports Ubuntu/Debian

## Development

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Running Tests
```ruby
# Install Requirements
bundle install

# Validate Files
bundle exec rake validate

# Run Rspec-Puppet
bundle exec rake spec

# Run Puppet-Lint
bundle exec rake lint
```

Source code availabe [here](https://github.com/pwelch/puppet-avahi)
