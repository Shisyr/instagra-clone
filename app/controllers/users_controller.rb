class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    def create
        @user = User.new(params[:user])
        if @user.save
            redirect_to root_path
            # to send in path
        else
           render "new" 
        end
        private
            def user_params
                params.require(:user).permit(:login,:email, :password)
                
            end
    end
    
    
    
end
