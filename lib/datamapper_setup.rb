env = ENV["RACK_ENV"] || "development"
require 'data_mapper'
require 'dm-timestamps'
require './lib/cheep'
require './lib/chitter'
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!