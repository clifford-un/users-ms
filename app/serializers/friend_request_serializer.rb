class FriendRequestSerializer < ActiveModel::Serializer
  attributes :id, :user_id_from, :user_id_to
end
