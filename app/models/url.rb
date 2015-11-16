class Url < ActiveRecord::Base
  before_save :generate_short

  def generate_short
    self.short = (0...6).map { (65 + rand(26)).chr }.join
  end
end
