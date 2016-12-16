require('spec_helper')

describe(Shoe) do
  it { should have_and_belong_to_many(:stores) }

  it('converts name to uppercase') do
    store = Shoe.create({:name => "star rockets"})
    expect(store.name).to(eq('Star Rockets'))
  end

  it('validates name uniqueness') do
    shoe = Shoe.create({:name => "star rockets"})
    shoe2 = Shoe.create({:name => "star rockets"})
    expect(shoe2.save).to(eq(false))
  end
end
