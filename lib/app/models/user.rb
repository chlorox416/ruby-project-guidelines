class User < ActiveRecord::Base
    has_many :favorites
    has_many :brands, through: :favorites
    

end