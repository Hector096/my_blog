class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new(author_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      format.html do
        if @like.save
          flash[:success] = 'Like saved successfully'
          redirect_to user_post_path(@post.author.id, @post.id)
        else
          flash.now[:error] = 'Error: Like could not be saved'
        end
      end
    end
  end
end
