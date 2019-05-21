class FriendSerializer < ActiveModel::Serializer
  
  attributes :friends
  
  #Usuarios que son amigos
  
  def friends

    friends=[]
            
        friend1=UserSerializer.new(User.find(object.user_id1))
        friend2=UserSerializer.new(User.find(object.user_id2))
       
        friends.push(friend1)
        friends.push(friend2)

    return friends

  end

  
end
