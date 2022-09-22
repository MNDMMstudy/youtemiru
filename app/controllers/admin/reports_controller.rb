class Admin::ReportsController < ApplicationController
  def index
    @youtes = Youte.all.where(report:true).order(updated_at: :DESC)
    @comments = Comment.all.where(report:true).order(updated_at: :DESC)
  end

  def show
  end

  def edit
  end

  def update
  end
end
