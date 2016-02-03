require 'spec_helper'

feature 'Player Set up' do

  scenario 'Signing up' do
    visit '/sign_up'
    fill_in "player_one_name", with: 'Jez Corbyn'
    fill_in "player_two_name", with: 'Donald Trump'
    click_button "Submit"
    expect(page).to have_content('Jez Corbyn vs. Donald Trump')
  end

  scenario 'Viewing player two\'s hit points as player one' do
    visit '/play'
    expect(page).to have_content('HP: 100')
  end

end
