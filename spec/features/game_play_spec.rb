require 'spec_helper'

feature 'Game play' do


  scenario 'Corbyn Attacking' do
    sign_in_and_play
    find('#left_attack').click_button("Attack@!£!$!%")
    expect(page).to have_content('Jez Corbyn attacked Donald Trump')
  end

  scenario 'Corybn reduces Trump\'s HP' do
    sign_in_and_play
    find('#left_attack').click_button("Attack@!£!$!%")
    click_button "OK"
    expect(page).to have_content('HP: 100 HP: 90')
  end

  scenario 'Trump Attacking' do
    sign_in_and_play
    find('#right_attack').click_button("Attack@!£!$!%")
    expect(page).to have_content('Donald Trump attacked Jez Corbyn')
  end

  scenario 'Corybn reduces Trump\'s HP' do
    sign_in_and_play
    find('#right_attack').click_button("Attack@!£!$!%")
    click_button "OK"
    expect(page).to have_content('HP: 90 HP: 100')
  end

  scenario 'Corybn can\'t attack when it is not his turn' do
    sign_in_and_play
    find('#left_attack').click_button("Attack@!£!$!%")
    click_button "OK"
    find('#left_attack').click_button("Attack@!£!$!%")
    expect(page).to have_content("Wait your turn!")
  end


end
