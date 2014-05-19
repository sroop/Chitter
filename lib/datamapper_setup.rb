require 'data_mapper'
env = ENV["RACK_ENV"] || "development"
# DataMapper::Logger.new(STDOUT, :debug)

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")
require './lib/cheep'
require './lib/user'
DataMapper.finalize
DataMapper.auto_upgrade!