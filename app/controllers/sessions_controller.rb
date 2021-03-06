class SessionsController < ApplicationController

    def new
    end

    def new_admin_session
    end

    def create
        session[:user_id] = nil
        session[:admin_id] = nil
        session[:team_ids] = Team.all.map{|t| t.id}
        @user = User.find_by(email: params[:user][:email])
      
   
        if @user && @user.authenticate(params[:user][:password])

            session[:user_id] = @user.id
            if @user.gold_user?
                redirect_to teams_path
            else
                redirect_to teams_path
            end
        else
            flash[:notice] = "No user / password matching"
            redirect_to new_session_path
        end
    end

    def create_admin_session
        session[:user_id] = nil
        session[:admin_id] = nil
        session[:team_ids] = Team.all.map{|t| t.id}
        @admin = Admin.find_by(email: params[:admin][:email])
        if @admin && @admin.authenticate(params[:admin][:password])

            session[:admin_id] = @admin.id
            redirect_to "/admins/#{@admin.id}/my_teams"
        else
            flash[:notice] = "No admin / password matching"
            redirect_to new_admin_session_path
        end
    end



    def destroy
        session.destroy
        redirect_to new_session_path
    end

end
