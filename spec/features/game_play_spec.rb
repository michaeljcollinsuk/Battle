require 'spec_helper'

feature 'Game play' do


  scenario 'Attacking' do
    sign_in_and_play
    click_button "Attack@!£!$!%"
    expect(page).to have_content('Jez Corbyn attacked Donald Trump')
  end

  scenario 'hp reduces' do
    sign_in_and_play
    click_button "Attack@!£!$!%"
    click_button "OK"
    expect(page).to have_content('HP: 90')
  end
end
