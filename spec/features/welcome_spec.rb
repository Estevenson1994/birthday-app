feature 'Testing main page' do
  scenario 'Home page says birthday' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end

  scenario 'Home page asks for name' do
    visit('/')
    expect(page).to have_content 'Whats your name?'
  end
end
