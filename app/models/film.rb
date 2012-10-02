class Film < ActiveRecord::Base
  attr_accessible :film, :year

  def self.nominated_in(year)
    Film.where(:year => year)
  end

end