require 'spec_helper'

feature 'Player Sign-up' do

  scenario 'When the player first joins the game' do
    visit '/sign_up'
    fill_in "player_one_name", with: 'Jez Corbyn'
    fill_in "player_two_name", with: 'Donald Trump'
    click_button "Submit"
    expect(page).to have_content('Jez Corbyn vs. Donald Trump')

  end
end
