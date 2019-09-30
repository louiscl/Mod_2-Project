class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        
        session[:user_id] = @user.id
       
        if @user == nil
            render new_session_path
        else
            redirect_to teams_path
        end
    end

    def current_user
        if session[:user_id]
        User.find(session[:user_id])
        end
    end 

end
