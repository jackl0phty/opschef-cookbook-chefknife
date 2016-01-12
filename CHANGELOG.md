chefknife CHANGELOG
===================

This file is used to list changes made in each version of the chefknife cookbook.

0.1.24
- Fix typo in chefknife.erb.

0.1.23
------
_ Added case dump_nodes. Dumps ALL nodes from single Chef server as .json.

0.1.22
------
- Added case data_bags_chef_server.
  Uploads All data bags to a single Chef server.

0.1.21
------
_ Update travis to use Ruby 2.3.0.

0.1.20
------
- Add ability to print out version of chefknife; which matches cookbook version.
  Add logic to create initial data bag object for all data bags.

0.1.19
------
- Add Travis-CI button to README.md.

0.1.18
------
- Fix foodcritic by removing unused template variable from chefknife::default.

0.1.17
-----
- Update Travis-CI support.

0.1.16
------
- Fix .kitchen.yml so test-kitchen will work.

0.1.15
------
- Remove metadata.json.

0.1.14
------
- Add OSX support.

0.1.13
------
- Fix chefknife template syntax error.

0.1.12
------
- Fix syntax errors.

0.1.11
------
- Update attributes file.

0.1.10
- Fix syntax error in default.rb.

0.1.9
- Update default.rb.

0.1.8
-----
- Fix syntax in default.rb.

0.1.7
-----
- Add attributes for user/group ownership. Mainly due to no root UNIX group on OSX.

0.1.6
-----
- Fix chefknife data_bag to upload single data bag item.

0.1.0
-----
- [your_name] - Initial release of chefknife

- - -
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
