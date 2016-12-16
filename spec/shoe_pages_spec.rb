require('spec_helper')

describe('shoe functionality through application', {:type => :feature}) do
  it('allows a user to add a new shoe') do
    visit('/')
    fill_in('shoe_name', :with => 'Nike Air')
    click_button('Add Shoe')
    expect(page).to have_content('Nike Air')
  end
end
