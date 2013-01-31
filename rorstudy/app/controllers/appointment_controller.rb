class AppointmentController < ApplicationController
  def list
    #render :text => "List"
     @appointments = Appointment.all
  end
  
  def show
    render :text => "Show"
  end
  
  def delete
    render :text => "Delete"
  end
  
  def create
    #render :text => "Create"
  end
end
