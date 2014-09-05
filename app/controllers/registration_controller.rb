class RegistrationController < ApplicationController
def new

@user1= User.new
end

def create

@user1 = User.new
@user1.name = params[:user][:name]
@user1.address = params[:user][:address]
@user1.email = params[:user][:email]
@user1.password = params[:user][:password]
@user1.password_confirmation =params[:user][:password_confirmation]

end
end
