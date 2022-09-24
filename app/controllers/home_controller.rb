class HomeController < ApplicationController
  def top
    logger.debug '==============================='
    logger.debug current_user.inspect
    logger.debug '==============================='
  end

  def about
  end
end
