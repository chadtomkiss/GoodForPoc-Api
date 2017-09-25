#!/usr/bin/env puma
# frozen_string_literal: true

directory ENV['APP_DIR']
rackup "#{ENV['APP_DIR']}/config.ru"
environment ENV['RACK_ENV'].to_s
daemonize false
pidfile '/var/run/puma.pid'
state_path '/tmp/puma.state'
threads 1, 8
bind 'tcp://0.0.0.0:' + ENV['PORT']
tag 'g4poc-api'
