feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Dave attacked Mittens'
    expect(page).to have_content 'Mittens HP: 90'
  end
end
