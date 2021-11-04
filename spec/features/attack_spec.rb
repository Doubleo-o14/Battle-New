feature "To win game" do
    scenario "he wants to attack player 2" do
        sign_in_and_play
        click_button "attack"
        expect(page).to have_text "leye attacks dean"
    end
end



    