class LoginsController < ApplicationController
def index
	render "index"
end

def operation
	if params[:commit] == "Login"
		puts ("Inside CLICKED")
		checkLogin
	else
		redirect_to action: 'create'
	end
end

def create
  if request.post?
    @login = Login.new(login_params)

    if @login.save
      render :action => 'success'
    else
      puts (@login.errors.full_messages)
      render :action => 'failure'
    end
  else
    @login = Login.new
  end
end

def login_params
	params.require(:login).permit(:name, :email, :password, :phone_number, :password_confirmation)
end

def checkLogin
	puts ("========================================================")
	username=params[:username]
	pass=params[:password]
	if !Login.where(:name => username).blank? and !Login.where(:password => pass).blank?
		render "login"
	else
		render "loginFailure"
	end
end

def success
	render "success"
end

def failure
	render "failure"
end	

end