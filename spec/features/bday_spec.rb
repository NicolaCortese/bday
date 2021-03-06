feature 'testing the homepage' do
  scenario 'has the title' do
    visit('/')
    expect(page).to have_content("Birthday App")
  end
  scenario 'asks for the name' do
    visit('/')
    expect(page).to have_content("What is your name?")
    expect(page).to have_field("user_name")
  end
  scenario 'asks for the bday' do
    visit('/')
    expect(page).to have_content("What is your bday?")
    expect(page).to have_field("user_bday")
  end
  scenario 'has a submit button' do
    visit('/')
    expect(page).to have_button("Submit")
  end
end
feature 'tests the result page' do
  scenario 'holds the user name' do
    visit('/')
    fill_in 'user_name',with 'Nico'
    fill_in 'user_bday',with '28/10/1992'
    
  end
end