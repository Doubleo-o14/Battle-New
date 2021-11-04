def sign_in_and_play
    visit('/')
    fill_in :player1, with: "leye"
    fill_in :player2, with: "dean"
    click_button 'Submit'
end