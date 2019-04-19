class Medium < ActiveRecord::Base
    has_many :faves 
    has_many :users, through: :faves
end    