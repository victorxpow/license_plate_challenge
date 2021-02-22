require 'rails_helper'

feature 'User view license plates' do
  scenario 'successfully' do
    license_plate = create(:license_plate)
    other_license_plate = create(:license_plate, owner: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path

    expect(page).to have_content(license_plate.id)
    expect(page).to have_content(other_license_plate.id)
    expect(page).to have_content(other_license_plate.owner)
    expect(page).to have_content(license_plate.owner)
    expect(page).to_not have_content('2010')
  end

  scenario 'see more details successfully' do
    license_plate = create(:license_plate)
    other_license_plate = create(:license_plate, owner: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path
    within("tr#license_plate-#{license_plate.id}") do
      click_on 'Mais detalhes'
    end

    expect(page).to have_content(license_plate.id)
    expect(page).to have_content(license_plate.owner)
    expect(page).to have_content(license_plate.model)
    expect(page).to have_content(license_plate.year)
  end
end