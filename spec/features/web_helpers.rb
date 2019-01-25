def enter_name_and_birthday
   visit('/')
   fill_in :name, with: "Erin"
   fill_in "day", with: "9"
   click_button 'Go!'
end
