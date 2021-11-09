# HME Puppet masterless basic server configuration
## Module name:  hme_masterless_basic_server

Welcome to your new module. A short overview of the generated parts can be found
in the [PDK documentation][1].

## Table of Contents

1. [Description](#description)
1. [Setup](#setup)
    * [What hme_masterless_basic_server affects](#what-hme_masterless_basic_server-affects)
    * [Setup requirements](#setup-requirements)
1. [Usage](#usage)
1. [Limitations](#limitations)
1. [Development](#development)

## Description

Puppet masterless basic server configuration module is in charge of setup basic Security and Compliance configuration for Ubuntu Servers in HME Azure Platform.

## Setup

### What hme_masterless_basic_server affects

The module handle the next configurations:
* requirements **Pending**
* user
    * Create HME user account.
* sudo
    * Add HME user account to SUDOERS.
* ssh
    * Disable root login.
* motd
    * Create disclosure login message.
* firewalld
    * Enable firewalld service.
    * Enable SSH and HTTPS ports.
* cron
    * Create cronjob configuration to execute puppet every 30 minutes.

### Setup Requirements

This modules requires the next base modules installation:

* puppetlabs-stdlib --version 6.6.0
* saz-sudo --version 7.0.2
* puppet-firewalld --version 4.4.0
* puppetlabs-motd --version 6.1.0


## Usage

Include the module within another class:
* include hme_masterless_basic_server
* class { 'hme_masterless_basic_server': }

Include the module in your site.pp enironment file:
* node default {
    include hme_masterless_basic_server
}

* node default {
    class { 'hme_masterless_basic_server': }
}

## Limitations

This module is tested only for Ubuntu Server 20.04.

## Development

Create classes:

In the module root directory use *pdk new class class_name*, then add the new class in the init.pp module init file.

## Contributors
By: Jose Hernandez - globant-jhernandez@hme.com

For: HME


[1]: https://puppet.com/docs/pdk/latest/pdk_generating_modules.html
[2]: https://puppet.com/docs/puppet/latest/puppet_strings.html
[3]: https://puppet.com/docs/puppet/latest/puppet_strings_style.html
