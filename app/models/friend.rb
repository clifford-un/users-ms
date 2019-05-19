class Friend < ApplicationRecord
    belongs_to :user, :foreign_key => "user_id1", :class_name => "User"
    belongs_to :friend, :foreign_key => "user_id2", :class_name => "User" 
end
