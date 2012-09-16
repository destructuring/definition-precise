run_list []
platform "generic"
platform_version "0.0.1"

release_dir ENV['PWD'].sub('definitions', 'vagrant')
project_dir ENV['PWD']('definitions', 'vagrant')
home_dir ENV['HOME']
app_env "development"
