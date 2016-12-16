require('spec_helper')

describe('store functionality through application', {:type => :feature}) do
  it('allows a user to add a new store and view all stores') do
    visit('/')
    fill_in('store_name', :with => 'Baby Gap')
    click_button('Add Store')
    expect(page).to have_content('Baby Gap')
  end

  it('allows a user to view details for a single store') do
    visit('/')
    fill_in('store_name', :with => 'Baby Gap')
    click_button('Add Store')
    click_link('Baby Gap')
    expect(page).to have_content('There are no shoes at this store!')
  end
end
