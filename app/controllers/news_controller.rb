class NewsController < ApplicationController
  def index
    @newses = News.order('created_at')
  end

  def show
    @news = News.find(params[:id])
  end
end
