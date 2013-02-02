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
    @appoiontment = Appointment.find(params[:id])
    @appoiontment.destroy

    redirect_to action: :index
  end
  
  def new
    #render :text => "new"
    @appointment = Appointment.new
  end
  
  def create
    #render :text => "Create"
    @appointment= Appointment.new(params[:appointment])
    if @appointment.save
      render 'success'
    else
      render 'new'
    end
  end
 end
