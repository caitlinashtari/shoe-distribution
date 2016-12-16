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

  it('allows a user edit a store') do
    visit('/')
    fill_in('store_name', :with => 'Baby Gap')
    click_button('Add Store')
    click_link('Baby Gap')
    click_link("Edit Baby Gap's Info")
    fill_in("store_name", :with => "Gabby Bap")
    click_button('Update')
    expect(page).to have_content('Gabby Bap')
  end

  it('allows a user delete a store') do
    visit('/')
    fill_in('store_name', :with => 'Baby Gap')
    click_button('Add Store')
    click_link('Baby Gap')
    click_link("Edit Baby Gap's Info")
    click_button('Delete Store')
    expect(page).to have_content('There are no stores yet!')
  end

end
