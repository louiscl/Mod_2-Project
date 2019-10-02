class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
   
        if @user && @user.authenticate(params[:user][:password])

            session[:user_id] = @user.id
            if @user.gold_user?
                redirect_to new_team_path
            else
                redirect_to teams_path
            end
        else
            flash[:notice] = "No user / password matching"
            redirect_to new_session_path
        end
    end

    def destroy
        session.destroy
        redirect_to new_session_path
    end

end
