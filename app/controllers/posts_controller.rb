class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post deleted' } # change to roots_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
   end
end
