module UrlShort
  extend ActiveSupport::Concern

  def generate_short
    (0...6).map { (65 + rand(26)).chr }.join
  end
end