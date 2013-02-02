class Appointment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :address, :phone, :email, :date
end
