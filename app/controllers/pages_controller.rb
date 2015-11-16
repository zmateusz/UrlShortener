class PagesController < ApplicationController

  def index
    if params[:url] && !params[:url].empty?
      @url = find_url || Url.create(short: @short, original: params[:url])
      @short = @url.short
    end

    if params[:i] && !params[:i].empty?
      redirect_to @url.original if identify_url
    end
  end

  def list
    @urls = Url.all
  end

  private

  def find_url
    Url.where(original: params[:url]).first
  end

  def identify_url
    @url = Url.where(short: params[:i]).first
  end
end
