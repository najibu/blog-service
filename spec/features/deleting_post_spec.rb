feature 'Deleting a Post' do
  before do
    @post = Post.create(content: 'The first post')
  end

  scenario 'A user deletes a post' do
    visit '/'

    click_link 'Delete'

    expect(page).to have_content('Post deleted')
    expect(page.current_path).to eq(root_path)
  end
end
