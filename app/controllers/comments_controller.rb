class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(text: comment_params[:text], author_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Comment saved successfully'
          redirect_to user_post_path(@post.author.id, @post.id)
        else
          flash.now[:error] = 'Error: Comment could not be saved'
        end
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
