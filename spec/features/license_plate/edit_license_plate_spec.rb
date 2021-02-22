require 'rails_helper'

feature 'User edit lincese plate' do
  scenario 'successfully' do
    license_plate = create(:license_plate)
    other_license_plate = create(:license_plate, owner: 'Nicolas', model: 'Tesla', year: '2010')

    visit root_path
    within("tr#license_plate-#{license_plate.id}") do
      click_on 'Mais detalhes'
    end
    click_on 'Editar'
    fill_in 'Nome do Proprietário', with: 'Marcelo'
    fill_in 'Modelo', with: 'Lambo'
    fill_in 'Ano', with: '2012'

    click_on 'Salvar'

    expect(page).to have_content('Marcelo')
    expect(page).to have_content('Lambo')
    expect(page).to have_content(2012)
  end
end