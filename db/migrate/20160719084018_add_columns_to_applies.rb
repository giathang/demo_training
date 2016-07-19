class AddColumnsToApplies < ActiveRecord::Migration
  def change
    add_column :applies, :employer, :string
    add_reference :applies, :job, index: true, foreign_key: true
  end
end
