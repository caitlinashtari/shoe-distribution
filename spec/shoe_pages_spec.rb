require('spec_helper')

describe('shoe functionality through application', {:type => :feature}) do
  it("allows a user to add a new shoe") do
    visit('/')
    fill_in('shoe_name', :with => 'Nike Air')
    click_button('Add Shoe')
    expect(page).to have_content('Nike Air')
  end

  it('allows user to add shoe to a store') do
    visit('/')
    fill_in('store_name', :with => 'Happy Feet')
    click_button('Add Store')
    fill_in('shoe_name', :with => 'Nike Air')
    click_button('Add Shoe')
    click_link('Nike Air')
    select('Happy Feet', :from => "store_id")
    click_button("Add Shoe to Store")
    expect(page).to have_content('Happy Feet')
  end
end
