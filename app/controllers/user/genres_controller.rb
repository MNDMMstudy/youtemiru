class User::GenresController < ApplicationController
  def genre
    # ジャンル検索をする場合
    @youtes = YouteGenre.find(params[:id]).youtes.order(created_at: :DESC)
    @youte = Youte.new
    @user = current_user
  end
end
