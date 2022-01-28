class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    post = current_user.posts.new
    render :new, locals: { post: post }
  end

  def create
    post = current_user.posts.new(post_params)
    @user = current_user
    @posts = @user.posts

    respond_to do |format|
      format.html do
        if post.save
          flash[:success] = 'Post saved successfully'
          redirect_to user_posts_url
        else
          flash.now[:error] = 'Error: Post could not be saved'
          render :new
        end
      end
    end
   end
  end


  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
