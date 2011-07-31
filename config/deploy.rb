set :application, "dmfes"
set :repository,  "git@github.com:harakirisoul/dmfes2011.git"

set :git_shallow_clone, 1
default_run_options[:pty] = true

set :use_sudo, false

set :scm, :git
set :user, 'tatsuro'

set :deploy_to, "/var/www/#{application}"
server '59.106.183.24', :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
