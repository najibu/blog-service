class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Post was successfully created."
      redirect_to root_path
    else
      flash[:danger] = "Post has not been created"
      render 'new'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post deleted' }
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
   end
end
