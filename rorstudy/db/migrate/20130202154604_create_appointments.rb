class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    #fields for app
    t.string :name
    t.string :address
    t.string :phone
    t.string :email
    t.datetime :date
    #
    t.timestamps
    end
  end
end
