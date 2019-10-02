class ApplicationController < ActionController::Base
    helper_method :current_user, :authorize_user, :authorize_gold_user

    def current_user
        if session[:user_id]
        User.find(session[:user_id])
        end
    end 

    def authorize_user
        unless current_user
            flash[:notice] = "Sorry, you need to be logged in to access that feature"
            redirect_to new_session_path
          end
    end

    def authorize_gold_user
        if current_user.standard_user?
            flash[:notice] = 'Access only for Gold Members'
            redirect_to teams_path
        end
    end

end
