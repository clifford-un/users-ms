
class DatamodelController < ApplicationController

    def index
        
        @test_model = Test.column_names
        @user_model = User.column_names
        @friend_model = Friend.column_names

      
        @my_object = { "data_model" => {{"test" => @test_model}, {"user"=>@user_model}, {"friend"=>@friend_model}} }
       
        render json: @my_object
        #render json: @tests
      end

end
