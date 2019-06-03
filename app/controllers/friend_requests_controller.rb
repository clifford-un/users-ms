class FriendRequestsController < ApplicationController
    

    def accept
      @request = FriendRequest.find(params[:id])  
      @friend = Friend.create(user_id1: @request.user_id_from, user_id2: @request.user_id_to) 
      FriendRequest.destroy(params[:id])
      render json: @friend
    end

    def request_list
      @request = User.getRequestList(params[:id])  
      render json: @request
    end
  

    def deny
      FriendRequest.destroy(params[:id])
    end
  
    def create
      @friend_request = FriendRequest.new(friend_request_params)
  
      if @friend_request.save
        render json: @friend_request, status: :created, location: @friend_request
      else
        render json: @friend_request.errors, status: :unprocessable_entity
      end
    end

    
    private
    # Only allow a trusted parameter "white list" through.
    def friend_request_params
      params.permit(:user_id_to, :user_id_from, :friend_request)
    end
  end
  