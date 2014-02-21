class SaysController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @say = @post.says.create(params[:say].permit(:commenter, :body))
      redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @say = @post.says.find(params[:id])
    @say.destroy
    redirect_to post_path(@post)
  end
end
