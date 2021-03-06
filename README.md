The chef-repo
===============
All installations require a central workspace known as the chef-repo. This is a place where primitive objects--cookbooks, roles, environments, data bags, and chef-repo configuration files--are stored and managed.

The chef-repo should be kept under version control, such as [git](http://git-scm.org), and then managed as if it were source code.

Knife Configuration
-------------------
Knife is the [command line interface](https://docs.chef.io/knife.html) for Chef. The chef-repo contains a .chef directory (which is a hidden directory by default) in which the Knife configuration file (knife.rb) is located. This file contains configuration settings for the chef-repo.

The knife.rb file is automatically created by the starter kit. This file can be customized to support configuration settings used by [cloud provider options](https://docs.chef.io/plugin_knife.html) and custom [knife plugins](https://docs.chef.io/plugin_knife_custom.html).

Also located inside the .chef directory are .pem files, which contain private keys used to authenticate requests made to the Chef server. The USERNAME.pem file contains a private key unique to the user (and should never be shared with anyone). The ORGANIZATION-validator.pem file contains a private key that is global to the entire organization (and is used by all nodes and workstations that send requests to the Chef server).

More information about knife.rb configuration options can be found in [the documentation for knife](https://docs.chef.io/config_rb_knife.html).

Cookbooks
---------
A cookbook is the fundamental unit of configuration and policy distribution. A sample cookbook can be found in `cookbooks/starter`. After making changes to any cookbook, you must upload it to the Chef server using knife:

    $ knife upload cookbooks/starter

For more information about cookbooks, see the example files in the `starter` cookbook.

Roles
-----
Roles provide logical grouping of cookbooks and other roles. A sample role can be found at `roles/starter.rb`.

Getting Started
-------------------------
Now that you have the chef-repo ready to go, check out [Learn Chef](https://learn.chef.io/) to proceed with your workstation setup. If you have any questions about Chef you can always ask [our support team](https://www.chef.io/support/) for a helping hand.
=======
Chef Fluency Badge Certification

Chef-Solo

It's an open source version of Chef-client 

==> Chef solo does not relay on Chef Server for Centralized distribution but instead runs off of local cookbooks.

==> Chef Solo does not have any type of authentication in order for it to run . 

==> Chef solo is run independently on a node.

	==> For example, if you only have one node to manage. 

Chef-Zero

It's a lightweight Chef server that runs in-memory on the local node. 

==> Allows chef-client to run against the chef-repo as if it was running against chef server 

==> Useful for testing and validating the behaviour of chef-client against our cookbooks, recipes ,
and run-lists before uploading those to the Chef-Server for Usage .


Chef-Server

It's a Central point of management for nodes within an environment .

	==> Authentication is required for the nodes to communicate with the Chef server.
	==> During a convergence the chef-client pulls the updated cookbook, recipe, roles, and 
	    environment information from Chef Server.
	==> Chef server is used for managing many different nodes and different node scenario 
	    configurations within an environment.

Some of hte knife command to manage the run_list 

 sudo knife node show server6
 knife node list
 knife node show dev-server6
 knife node run_list add dev-server6
 knife node run_list add dev-server6 'recipe[qapache::websites]'
 knife node show dev-server6
 knife node run_list add dev-server6 'recipe[qapache::websites]' -b recipe['qapache']
 knife node show dev-server6
 knife node run_list remove dev-server6 'recipe[qapache::websites],recipe[qapache]'
 knife node show dev-server6
