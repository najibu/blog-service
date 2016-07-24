feature 'Timeline' do
  scenario 'A user creates a new post' do
    visit '/posts/new'

    fill_in 'Content', with: 'Lorem ipsum'

    click_button 'Submit'

    expect(page).to have_text('Post was successfully created.')
  end
end
