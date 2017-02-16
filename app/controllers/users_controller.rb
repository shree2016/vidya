class UsersController < ApplicationController
  def new
@user=User.all
  end
  def create

    @user=User.new(user_params)
    if @user.save
      flash[:notice]="Successfully signed up"

      redirect_to '/users/new'
    else
      #flash[:notice]="**Fields cant be blank"

      render 'new',flash[:notice]=>"fields cant b empty"
    end


end

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end