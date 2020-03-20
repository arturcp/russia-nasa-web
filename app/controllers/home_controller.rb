class HomeController < ApplicationController
  def index
    @date = params[:date]
    @result = RussiaAPI.get(@date) if @date
  end
end
