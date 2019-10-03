class ApplicationController < ActionController::Base
    helper_method :current_user, :authorize_user, :authorize_gold_user

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
            elsif session[:admin_id]
            Admin.find(session[:admin_id])
        end
    end 

    def authorize_user
        unless current_user
            flash[:notice] = "Sorry, you need to be logged in to access that feature"
            redirect_to new_session_path
          end
    end

    def authorize_admin 
        unless current_user.class == Admin
            flash[:notice] = 'Access only for Admins'
                redirect_to teams_path
        end
    end

    def authorize_gold_user
        # method can't be called on admin! || current_user.class = Admin.class
        unless current_user.class == Admin
            if current_user.standard_user? 
                flash[:notice] = 'Access only for Gold Members'
                redirect_to teams_path
            end
        end
    end

    def authorize_admin_and_gold_user
        # authorize both
    end

end
