class Game < ActiveRecord::Base

	has_many :dlcjoins
  has_many :users, :through => :dlcjoins, dependent: :destroy 

end
