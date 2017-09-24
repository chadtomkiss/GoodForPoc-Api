#!/usr/bin/env puma
# frozen_string_literal: true

directory ENV['APP_DIR']

rackup "#{ENV['APP_DIR']}/config.ru"

daemonize false
pidfile nil
state_path nil

stdout_redirect nil
stdout_redirect nil

pidfile '/var/run/puma.pid'
state_path '/tmp/puma.state'

threads 1, 32

bind 'tcp://0.0.0.0:' + ENV['PORT']

# Code to run before doing a restart. This code should
# close log files, database connections, etc.
#
# This can be called multiple times to add code each time.
#
# on_restart do
#   puts 'On restart...'
# end
restart_command "#{ENV['APP_DIR']}/bin/puma"
prune_bundler
preload_app!

# === Cluster mode ===

# workers 0

# Code to run immediately before the master starts workers.
#
# before_fork do
#   puts "Starting workers..."
# end

# Code to run in a worker before it starts serving requests.
#
# This is called everytime a worker is to be started.
#
# on_worker_boot do
#   puts 'On worker boot...'
# end

# Code to run in a worker right before it exits.
#
# This is called everytime a worker is to about to shutdown.
#
# on_worker_shutdown do
#   puts 'On worker shutdown...'
# end

# Code to run in the master right before a worker is started. The worker's
# index is passed as an argument.
#
# This is called everytime a worker is to be started.
#
# on_worker_fork do
#   puts 'Before worker fork...'
# end

# Code to run in the master after a worker has been started. The worker's
# index is passed as an argument.
#
# This is called everytime a worker is to be started.
#
# after_worker_fork do
#   puts 'After worker fork...'
# end

preload_app!
tag 'g4poc-api'
