feature 'Timeline' do 
	scenario "A user creates a new post" do
		visit "/"

		fill_in "Content", with: "Lorem ipsum"

		click_button "Submit"

		expect(page).to have_content("Post has been created")
	end
end