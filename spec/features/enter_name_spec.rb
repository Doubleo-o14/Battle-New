
feature 'names of particpants' do
    scenario 'Expects players to fill in names' do
      sign_in_and_play
      expect(page).to have_content 'leye vs dean'
    end
  end