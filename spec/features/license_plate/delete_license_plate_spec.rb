require 'rails_helper'

feature 'User delete license plate' do
  scenario 'successfully' do
    license_plate = create(:license_plate)
    other_license_plate = create(:license_plate, owner: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path
    within("tr#license_plate-#{license_plate.id}") do
      click_on 'Mais detalhes'
    end
    click_on 'Remover'

    expect(page).to_not have_content(license_plate.owner)
    expect(page).to have_content(other_license_plate.id)
    expect(page).to have_content(other_license_plate.owner)
  end
end