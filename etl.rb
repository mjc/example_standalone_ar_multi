#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

Bundler.require

ActiveRecord::Base.configurations = YAML.load(File.open('database.yml'))

# require everything in models
Dir.glob('./models/*', &method(:require))

