require('sinatra/activerecord')
require("bundler/setup")
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
Bundler.require(:default)


get('/') do
  @stores = Store.all()
  erb(:index)
end

post('/stores') do
  name = params.fetch('store_name')
  @store = Store.create({:name => name})
  if @store.save
    @stores = Store.all
    erb(:index)
  else
    erb(:error)
  end
end

post('/shoes') do
  name = params.fetch('shoe_name')
  store_id = params.fetch('store_id').to_i
  @store = Store.find(store_id)
  @shoe = @store.shoes.create({:name => name})
  if @shoe.save
    @shoes= Shoe.all
    @stores = Store.all
    erb(:index)
  else
    erb(:error)
  end
end

get('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i)
  erb(:store)
end
