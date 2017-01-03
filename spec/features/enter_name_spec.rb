require './lib/app.rb'

RSpec.feature "entering player name", :type => :feature do
  scenario 'player has logged in and enters their name' do
    visit '/'
    fill_in 'player_name',:with => 'Jack'
    click_button 'Submit'
    expect(page).to have_text("Welcome to the RPS battle-ground Jack")
  end
end
