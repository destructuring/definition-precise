#!/usr/bin/env ruby

require 'alpha_omega/deploy'
load 'config/deploy'

# application deploy
namespace :ubuntu do
  task :overrides do
    set :skip_scm, false
    set(:deploy_to) { %x(pwd).chomp.sub("definitions", "vagrant") }
  end
end

# hooks into alpha_omega deploy
after "deploy:ocaldomain", "ubuntu:overrides"
after "deploy:cook", "microwave:cook"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end

set :user, ENV['LOGNAME']
set :group, ENV['LOGNAME']
set :skip_scm, false
