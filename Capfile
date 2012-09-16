#!/usr/bin/env ruby

require 'alpha_omega/deploy'
load 'config/deploy'

set :releases, [ ]

set(:deploy_to) { %x(pwd).chomp.sub("definitions", "vagrant") }

set :root_user, ENV['LOGNAME']
set :root_group, ENV['LOGNAME']

set :use_sudo, false
set :dir_perms, "0750"

# application deploy
namespace :ubuntu do
end

# hooks into alpha_omega deploy
after "deploy:cook", "microwave:cook"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end

set :user, ENV['LOGNAME']
set :group, ENV['LOGNAME']
set :skip_scm, false
