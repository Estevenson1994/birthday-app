feature 'Testing birthday calculator' do
  scenario "Birthday isn't current date" do
    enter_name_and_birthday
    expect(page).to have_content "Your birthday is"
  end
end
