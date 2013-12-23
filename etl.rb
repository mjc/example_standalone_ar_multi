#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

Bundler.require

ActiveRecord::Base.configurations = YAML.load(File.open('database.yml'))

# quick hack to make namespaces work
module Act; end
module Crm; end

# require everything in models
Dir.glob('./models/**/*.rb', &method(:require))

