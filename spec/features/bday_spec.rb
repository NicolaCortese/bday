feature 'testing the homepage' do
  scenario 'has the title' do
    visit('/')
    expect(page).to have_content("Birthday App")
  end
end