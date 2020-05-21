class CitizensController < ApplicationController

  def register
    @citizen = Citizen.new
  end

  def signin
    @citizen = Citizen.new
  end

  def authenticate
    searched_user = Citizen.find_by_email(params[:citizen][:email])

    if params[:citizen][:password] == searched_user.password

      redirect_to new_citizen_appointment_path(searched_user)
    end
  end

  def edit
  end

end
