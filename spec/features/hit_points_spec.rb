
feature 'to see hit points' do
    scenario "to see player 2 hit points" do
        sign_in_and_play
        expect(page).to have_text "dean has 100 HP"
    end
end