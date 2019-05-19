class User < ApplicationRecord
    has_many :friends, :foreign_key => "user_id1", 
    :class_name => "Friend"

 has_many :friends, :through => :friends
end
