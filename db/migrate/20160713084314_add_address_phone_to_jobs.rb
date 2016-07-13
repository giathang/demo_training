class AddAddressPhoneToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :address, :string
    add_column :jobs, :phone, :string
  end
end
