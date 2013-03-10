require "rvm/capistrano"

ssh_options[:user] = "jeff"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
default_run_options[:pty] = true

set :application, "jeffreyhorn"
set :repository,  "git://github.com/theverything/jeffreyhorn.git"

set :scm, :git

set :deploy_to, "/home/jeff/www"

set :user, "jeff"
set :use_sudo, true

server "jeffreyhorn.com", :app, :web, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#     desc "deployment:stop"
#     task :stop, :roles => :app do
#         invoke_command "service thin stop"
#     end

#     desc "deployment:start"
#     task :start, :roles => :app do
#         invoke_command "service thin start"
#     end

#     desc "deployment:restart"
#     task :restart, :roles => :app do
#         invoke_command "service thin stop"
#         invoke_command "service thin start"
#     end
# end