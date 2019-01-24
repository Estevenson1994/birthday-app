

feature 'birthday page Page welcomes users' do
  scenario "Enter name and click submit" do
    visit("/")
    fill_in :name, with: "Erin" 
    click_button "Go!"
    visit ("/birthday")
    expect(page).to have_content "Erin"
  end
end
