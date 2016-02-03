require 'spec_helper'

feature 'Game play' do


  scenario 'Attacking' do
    sign_in_and_play
    button_click "Attack@!£!$!%"
    expect(page).to have_content('HP: 90')
  end
end
