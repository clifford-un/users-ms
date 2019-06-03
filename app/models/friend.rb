class Friend < ApplicationRecord
    
    
    def self.getFriendList(id)

        ret=[]
            
            
        friends = Friend.where("user_id1 = ? ",id)
        friends.each do |friend|
            ret.push(UserSerializer.new(User.find(friend.user_id2)))
        end

        friends = Friend.where("user_id2 = ? ",id)
        friends.each do |friend|
            ret.push(UserSerializer.new(User.find(friend.user_id1)))
        end
        
            
        
        return ret
    end
    
end
