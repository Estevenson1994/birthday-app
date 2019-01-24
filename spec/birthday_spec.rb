feature 'Testing main page' do
  scenario 'Home page says birthday' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end
