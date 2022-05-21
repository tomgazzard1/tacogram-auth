class SessionsController < ApplicationController
  def new
  end
  
  def create
    # TODO: authenticate user
    @user = User.find_by({"email"} => params["email"]) # Check to see if submitted email is in database. Not nested since not /sessions not DB backed 
    if @user # Checks to see if the user exists in the DB based on the email submitted
      redirect_to "/posts"
    else
      redirect_to "/sessions/new"
    end
end
