require 'rails_helper'

feature 'User view all lincese plates' do
  scenario 'successfully' do
    license_plate = create(:license_plate)
    other_license_plate = create(:license_plate, owner: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path

    expect(page).to have_content(license_plate.id)
    expect(page).to have_content(license_plate.owner)
    expect(page).to have_content(license_plate.model)
    expect(page).to have_content(license_plate.year)
  end
end