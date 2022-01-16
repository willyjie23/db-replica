# config valid for current version and patch releases of Capistrano
lock "~> 3.15.0"

set :application, "db-replica"
set :repo_url, "git@github.com:willyjie23/db-replica.git"

append :linked_files, "config/database.yml", "config/master.key"

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"
set :keep_releases, 5

append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"