class PostsController < ApplicationController
  
  before_action :authenticate_user
  
  def home
    @post = Post.find_by(id: params[:id])
  end
  
  def space
    @posts = Post.all.order(created_at: :asc)
    @user = User.find_by(id: :@post.user_id)
  end
  
  def create
    @post = Post.new(
      content: params[:content],
      user_id: @current_user.id)
    @post.save
    redirect_to("/posts/space")
  end
  
  def destroy
    @post = Post.find_by(params[:user_id])
    @post.destroy

    redirect_to("/posts/space")
  end
end
