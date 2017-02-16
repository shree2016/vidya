class SessionsController < ApplicationController
  def new
    if session[:user_id]
      @user=Form.find session[:user_id]
      render :template => "sessions/logged_in"
    else

      render :template => "sessions/new"
    end
  end
  def create
    if params[:email] and params[:password]
      @user = Form.where('email =? and password =?',params[:email],params[:password]).first
      logger.info "========i am here==#{@user.inspect}"
      if @user.blank?
        flash[:notice]="**Email and password fields cannot be empty"
        redirect_to "/login"
      else

        session[:user_id] = @user.id
        #redirect_to logged_in_users_path(:id=>@user.id)
        render :template => "sessions/logged_in"
      end

    end
 end


  def logged_in
    render :template => "/session/logged_in"
  end

  def logout
    session[:user_id] = nil
    redirect_to "/forms/new"
  end




      def destroy
        session[:user_id]=user.id
            redirect_to '/session/login',:notice=>"loggedout "
      end
  end
