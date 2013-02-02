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
    #@appointment= Appointment.new(params[:post].permit(:name, :address, :email, :phone))

    #if @post.save
    #  redirect_to action: :show, id: @post.id
    #else
    #  render 'new'
    #end
  end
end
