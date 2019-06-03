class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :e_mail, :last_connection, :friends, :request_number, :friend_requests

    def friends
        ret=[] 
        friends= Friend.where("user_id1 = ? ",object.id)
        friends.each do |friend|
            ret.push(User.getUserNameById(friend.user_id2))
        end

        friends = Friend.where("user_id2 = ? ",object.id)
        friends.each do |friend|
            ret.push(User.getUserNameById(friend.user_id1))
        end
        return ret
    end

    def request_number
        return FriendRequest.where("user_id_to = ?",object.id).count
    end

    def friend_requests
        return User.getRequestList(object.id) 
    end

end
