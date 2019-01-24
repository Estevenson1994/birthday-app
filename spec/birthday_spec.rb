feature 'Testing main page' do
  scenario 'Home page says birthday' do
    visit('/')
    expect(page).to have_content 'Birthday App'
  end
end
