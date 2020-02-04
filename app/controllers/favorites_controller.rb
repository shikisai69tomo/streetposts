class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    post = Post.find(params[:favorite_id])
    current_user.favorite(post)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to root_url
  end

  def destroy
    post = Post.find(params[:favorite_id])
    current_user.unfavorite(post)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end
