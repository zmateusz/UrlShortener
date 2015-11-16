class Url < ActiveRecord::Base
  include UrlShort

  before_save :set_short_url

  def set_short_url
    5.times do
      short = generate_short
      found = self.class.find_by_short short
      unless found
        self.short = short
        return
      end
    end
    raise ShortGenerateError, "can't generate short url"
  end
end

class ShortGenerateError < StandardError

end