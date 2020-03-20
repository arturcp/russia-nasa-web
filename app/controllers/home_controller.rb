class HomeController < ApplicationController
  def index
    @date = params[:date]
    @result = RussiaAPI.get(@date)
  end
end
