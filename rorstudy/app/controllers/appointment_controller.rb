class AppointmentController < ApplicationController
  def list
    #render :text => "List"
     @appointments = Appointment.all
  end
  
  def show
    @title="Appointment datail"
    @appointment = Appointment.find(params[:id])
  end
  
  def delete
    render :text => "Delete"
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

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
