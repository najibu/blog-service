feature 'Creating Posts' do
  scenario 'A user creates a new post' do
    visit '/posts/new'

    fill_in 'Content', with: 'Lorem ipsum'

    click_button 'Submit'

    expect(page).to have_text('Post was successfully created.')
  end

  scenario 'A user fails to create a new post' do
    visit '/posts/new'

    fill_in 'Content', with: ''

    click_button 'Submit'

    expect(page).to have_content('Post has not been created')
    expect(page).to have_content("Content can't be blank")
  end
end
