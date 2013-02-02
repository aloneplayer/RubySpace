class AppointmentController < ApplicationController
  def list
    #render :text => "List"
     @appointments = Appointment.all
  end
  
  def show
    @title="Appointment datail"
    @appointment = Appointment.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        flash[:notice] = "Wrong id"
        redirect_to :action => 'notfound'
  end
  
  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to :action => "list"
    rescue ActiveRecord::RecordNotFound
        flash[:notice] = "Wrong id"
        redirect_to :action => 'notfound'
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
