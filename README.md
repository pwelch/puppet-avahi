# Puppet-Avahi

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with avahi](#setup)
    * [What avahi affects](#what-avahi-affects)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Installs and Configures [Avahi](http://avahi.org/) zeroconf networking software.

## Setup

### What avahi affects

* package/service/configuration files for Avahi

## Usage

```ruby
class { 'avahi::init' }
```

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

Only Supports Ubuntu/Debian

## Development

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Source code availabe [here](https://github.com/pwelch/puppet-avahi)
