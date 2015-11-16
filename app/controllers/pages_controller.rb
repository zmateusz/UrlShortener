class PagesController < ApplicationController

  def index
    if params[:url] && !params[:url].empty?
      @url = find_url || Url.create(short: @short, original: params[:url])
      @short = @url.short
    end
  end

  def redirect
    @url = identify_url
    redirect_to @url ? @url.original : root_path
  end

  def list
    @urls = Url.all
  end

  private

  def find_url
    Url.where(original: params[:url]).first
  end

  def identify_url
    Url.where(short: params[:url]).first
  end
end
