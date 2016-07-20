class AddColumnToApplies < ActiveRecord::Migration
  def change
    add_column :applies, :phone_number, :string
    add_column :applies, :address, :string
    add_column :applies, :current_company, :string
    add_column :applies, :current_job, :string
  end
end
