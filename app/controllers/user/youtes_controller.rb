class User::YoutesController < ApplicationController
  before_action :authenticate_user!
  def index
    @youtes =Youte.all.order(created_at: :DESC)
    @youte =Youte.new
    @user = current_user
  end

  def new
    @youte = Youte.new
    @youte_genres = YouteGenre.all
  end

  def create
    @youte = Youte.new(youte_params)
    @youte.user_id = current_user.id
    @user =current_user
    #@youte.user_id = current_user.id
    @youtes =Youte.all
    if @youte.save
     flash[:notice] = "Youteの投稿が完了しました"
     #redirect_to user_youte_index_path(@youte.id)
     redirect_to user_youtes_path
    else
     render :index
    end
  end

  def show
    @youtes =Youte.find(params[:id])
    @youte = Youte.new
    @user = current_user
    @comment = Comment.new
    @comments = Comment.all
  end

  def edit
    @youte = Youte.find(params[:id])
  end

  def update
    @youte = Youte.find(params[:id])
    @youte.update(indicate: false)
    redirect_to user_mypage_index
  end

  def report
  end

private
  def youte_params
    params.require(:youte).permit(:user_id, :youte_genre_id, :report, :indicate, :text, :star)
  end

end
