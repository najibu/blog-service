feature 'Listing Posts' do
  before do
    @post1 = Post.create(content: 'The first post')
    @post2 = Post.create(content: 'The second post')
  end

  scenario 'List all posts' do
    visit '/posts'

    expect(page).to have_content(@post1.content)
    expect(page).to have_content(@post2.content)
  end
end
