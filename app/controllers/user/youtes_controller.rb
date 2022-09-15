class User::YoutesController < ApplicationController
  def index
    @youtes =Youte.all
    @youte =Youte.new
    @user =current_user
  end

  def new
    @youte = Youte.new
    @youte_genres = YouteGenre.all
  end

  def create
    @youte = Youte.new(youte_params)
    @user =current_user
    #@youte.user_id = current_user.id
    @youtes =Youte.all
    if @youte.save
     flash[:notice] = "Youteの投稿が完了しました"
     redirect_to user_youte_index_path(@item.id)
    else
     render :index
    end
  end 

  def show
    @youte =Youte.find(params[:id])
    @user =current_user
  end

  def edit
    @youte = Youte.find(params[:id])
  end

  def update
    @youte = Youte.find(params[:id])
    if @youte.update(youte_params)
     flash[:notice] = "You have updated book successfully."
     redirect_to user_youte_path(@youte.id)
    else
     render :edit
    end
  end

private
  def youte_params
    params.require(:youte).permit(:user_id, :youte_genre_id, :report, :indicate, :youte_text)
  end

end
