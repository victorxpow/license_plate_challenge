require 'rails_helper'

feature 'register a new license plate' do
  scenario 'sucessfully' do

    visit root_path
    click_on 'Novo Registro'

    fill_in 'Nome do Proprietário', with: 'Marcelo'
    fill_in 'Modelo', with: 'Lambo'
    fill_in 'Ano', with: '2012'

    click_on 'Salvar'

    expect(page).to have_content('Marcelo')
    expect(page).to have_content('Lambo')
    expect(page).to have_content(2012)
  end
end