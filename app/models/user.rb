class User < ActiveRecord::Base
    has_many :faves
    has_many :medias, through: :faves

end     