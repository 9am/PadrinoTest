class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @post.comments << @comment
    redirect_to experiment_path(@post)
  end

  def destory
    
  end

  private

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
