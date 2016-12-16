require('spec_helper')

describe('store functionality through application', {:type => :feature}) do
  it('allows a user to add a new store') do
    visit('/')
    fill_in('store_name', :with => 'Baby Gap')
    click_button('Add Store')
    expect(page).to have_content('Baby Gap')
  end
end
