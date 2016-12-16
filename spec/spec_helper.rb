ENV['RACK_ENV'] = 'test'
require('rspec')
require('pg')
require('sinatra/activerecord')
require('shoe')
require('store')

RSpec.configure do |config|
  config.after(:each) do
    Shoe.all.each(&:destroy)
    Store.all.each(&:destroy)
  end
end
