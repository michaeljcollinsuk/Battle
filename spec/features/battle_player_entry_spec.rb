require 'spec_helper'

feature 'Player Set up' do


  scenario 'Signing up' do
    sign_in_and_play
    expect(page).to have_content('Jez Corbyn Donald Trump')
  end

  scenario 'Viewing player two\'s hit points as player one' do
    sign_in_and_play
    expect(page).to have_content('HP: 100')
  end
end
