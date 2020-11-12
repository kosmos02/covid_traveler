require 'bundler/setup'
Bundler.require

ActiveRecord::Base.logger = Logger.new('/dev/null')
require_all 'lib'