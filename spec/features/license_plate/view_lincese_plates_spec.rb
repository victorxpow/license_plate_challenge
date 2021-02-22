require 'rails_helper'

feature 'User view all lincese plates' do
  scenario 'successfully' do
    lincese_plate = create(:lincese_plate)
    other_lincese_plate = create(:lincese_plate, onwer: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path
    click_on 'Todas as Placas'

    expect(page).to have_content(lincese_plate.id)
    expect(page).to have_content(lincese_plate.owner)
    expect(page).to have_content(lincese_plate.model)
    expect(page).to have_content(lincese_plate.year)
  end
end