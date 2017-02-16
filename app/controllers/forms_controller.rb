class FormsController < ApplicationController
		

def index
@form=Form.all
end



def new
@form=Form.new

end

def show 
@form=Form.find(params[:id])
end


def create
  @form=Form.new(form_params)
  if @form.save
    flash[:notice]="Successfully signed up"

    redirect_to '/forms/new'
  else
    #flash[:notice]="**Fields cant be blank"

    render 'new',flash[:notice]=>"fields cant b empty"
  end
end


def form_params
 params.require(:form).permit(:firstname,:lastname,:email,:password,:address)
end

def destroy

end

end