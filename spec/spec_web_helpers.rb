def sign_in_and_play
  visit '/sign_up'
  fill_in "player_one_name", with: 'Jez Corbyn'
  fill_in "player_two_name", with: 'Donald Trump'
  click_button "Submit"
end
