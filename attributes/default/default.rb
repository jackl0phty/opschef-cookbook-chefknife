#
# Cookbook Name:: chefknife 
# Attributes:: default 
# Copyright 2011, Gerald L. Hevener, Jr, M.S.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Chefknife config file.
default['chefknife']['chefknife_config'] = '/etc/chef/chefknife'

# List of Chef knife configs ( e.g. knife.rb ). You MUST OVERRIDE this!
default['chefknife']['knife_configs'] = [] 

# User/group ownership of /usr/local/bin/chefknife.
node.default['chefknife']['chefknife_binary_user'] = 'root'
# You MUST OVERRIDE this if you're on OSX. Might want to use the wheel group.
default['chefknife']['chefknife_binary_group'] = 'root'

# User/group ownership of directory /etc/chef.
default['chefknife']['chefknife_config_dir_user'] = 'root'
# You MUST OVERRIDE this if you're on OSX. Might want to use the wheel group.
default['chefknife']['chefknife_config_dir_group'] = 'root'

# User/group ownership of config /etc/chef/chefknife
default['chefknife']['chefknife_config_user'] = 'root'
# You MUST OVERRIDE this if you're on OSX. Might want to use the wheel group.
default['chefknife']['chefknife_config_group'] = 'root'
