require('spec_helper')

describe(Store) do
    it { should have_and_belong_to_many(:shoes) }

    it('converts name to uppercase') do
      store = Store.create({:name => "purple dinosaur"})
      expect(store.name).to(eq('Purple Dinosaur'))
    end
end
