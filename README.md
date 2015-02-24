Travis-ci status: [![Build Status](https://secure.travis-ci.org/jackl0phty/opschef-cookbook-chefknife.png?branch=master)](http://travis-ci.org/jackl0phty/opschef-cookbook-chefknife)

chefknife Cookbook
==================

Chefknife is a Ruby command-line utility to help manage multiple Chef servers and multiple knife configs.

Requirements
------------

A recent copy of Ruby. Tested with 1.9.3.

Attributes
----------

This cookbook contains the following attributes.

# Config file for chefknife.
<pre><code>
default['chefknife']['chefknife_config'] = '/etc/chef/chefknife'
</pre></code>

# List of Chef knife configs ( e.g. knife.rb ). You MUST OVERRIDE this!
<pre><code>
default['chefknife']['knife_configs'] = [] 
</pre></code>

Usage
-----

You can execute chefknife, chefknife -h, or chefknife --help to get the help menu:
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife 
Usage: opt_parser COMMAND [OPTIONS]

Commands
     environments: Upload ALL Chef environments to ALL Chef servers!
     environment: Upload single Chef environment to ALL Chef servers
     roles: Upload ALL Chef roles to ALL Chef servers!
     role: Upload single role to ALL Chef servers
     data_bags: Upload ALL Chef data bags to ALL Chef servers!
     data_bag: Upload single data bag to ALL Chef servers
     cookbooks: Upload ALL Chef cookbooks to ALL Chef servers!
     cookbook: Upload single cookbook to ALL Chef servers

Options
    -h, --help                       help
</pre></code>

NOTE: All chefknife commands must be executed from within your Chef repo ( e.g. Chef repo shoudl be = to PWD ).

The following chefknife cmd can be used to upload ALL Chef environments to ALL Chef servers!:
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife environments
</pre></code>

The following chefknife cmd can be used to upload a single Chef environment to ALL Chef servers:
This assumes you have an enviroment called production.
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife environment production
</pre></code>

The following chefknife cmd can be used to upload ALL Chef roles to ALL Chef servers!:
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife roles
</pre></code>

The following chefknife cmd can be used to upload a single Chef role to ALL Chef servers!:
This assumes you have a role named webserver.
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife role webserver
</pre></code>

The following chefknife cmd can be used to upload ALL cookbooks to ALL Chef servers!:
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife cookbooks
</pre></code>

The following chefknife cmd can be used to upload a single cookbook to ALL Chef servers!:
<pre><code>
jenkins@jenkins.example.com: ~/chef-hosted: chefknife cookbook apache2
</pre></code>

You should override the default['chefknife']['knife_configs'] = [] attribute with a list of knife configs for all your chef servers,
including [Enterprise Chef](http://www.opscode.com/enterprise-chef/) if you're using it.

Below is a sample role you could use to deploy chefknife and it's config file /etc/chef/chefknife containing paths to multiple knife.rb files.
<pre><code>
name "chefknife"
description "Manages multiple Chef Servers."
override_attributes(
   "chefknife" => {
   "knife_configs" => [ "/etc/chef/chef01-knife.rb","/etc/chef/chef02-knife.rb" ]
   }
)
</pre></code>

You can install chefknife by including chefknife in your node's run_list:
<pre><code>
{
  "name":"my_node",
  "run_list": [
    "recipe[chefknife]"
  ]
}
</pre></code>

Below is a sample chefknife config.
<pre><code>
skywalker@alderaan: ~: cat /etc/chef/chefknife 
knife_config~~/etc/chef/chef01-knife.rb
knife_config~~/etc/chef/chef02-knife.rb
</pre></code>

DEFAULT BEHAVIOR
================

- The chefknife cmd-line utility will be written as /usr/local/bin/chefknife.
- chefknife's config file will be written as /etc/chef/chefknife.

Contributing
------------

- Fork the repository on Github
- Create a named feature branch (like `add_component_x`)
- Write you change
- Write tests for your change (if applicable)
- Run the tests, ensuring they all pass
- Submit a Pull Request using Github

License and Authors
-------------------
Authors: Gerald L. Hevener Jr., M.S.
