class PagesController < ApplicationController
  def index
    if params[:url] && !params[:url].empty?
      @short = (0...6).map { (65 + rand(26)).chr }.join
    end
  end
end
