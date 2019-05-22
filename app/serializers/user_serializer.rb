class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :e_mail, :last_connection, :friends

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
end
