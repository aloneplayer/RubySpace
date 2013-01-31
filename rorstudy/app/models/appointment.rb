class Appointment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :id, :name, :address,:phone, :email,:date, :addeddate
end
