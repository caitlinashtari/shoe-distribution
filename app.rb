require('sinatra/activerecord')
require("bundler/setup")
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
Bundler.require(:default)


get('/') do
  @stores = Store.all()
  @shoes = Shoe.all()
  erb(:index)
end

post('/stores') do
  name = params.fetch('store_name')
  @store = Store.create({:name => name})
  if @store.save
    @stores = Store.all
    @shoes = Shoe.all
    erb(:index)
  else
    erb(:error)
  end
end

get('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i)
  erb(:store)
end

get('/stores/:id/edit') do
  @store = Store.find(params.fetch('id').to_i)
  erb(:store_edit)
end

patch('/stores/:id') do
  name = params.fetch('store_name')
  @store = Store.find(params.fetch('id').to_i)
  @store.update({:name => name})
  erb(:store)
end

delete('/stores/:id') do
  @store = Store.find(params.fetch('id').to_i)
  @store.delete
  @stores = Store.all
  @shoes = Shoe.all
  erb(:index)
end

post('/shoes') do
  name = params.fetch('shoe_name')
  @shoe = Shoe.create({:name => name})
  if @shoe.save
    @shoes= Shoe.all
    @stores = Store.all
    erb(:index)
  else
    erb(:error)
  end
end

get('/shoes/:id') do
  @shoe = Shoe.find(params.fetch('id').to_i)
  @stores = Store.all
  erb(:shoe)
end

post('/shoes/:id') do
  @shoe = Shoe.find(params.fetch('id').to_i)
  store_id = params.fetch('store_id').to_i
  @store = Store.find(store_id)
  add_shoe = @store.shoes.push(@shoe)
  @stores = Store.all
  @shoes = Shoe.all
  erb(:index)
end
