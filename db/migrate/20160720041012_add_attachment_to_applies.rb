class AddAttachmentToApplies < ActiveRecord::Migration
  def change
    add_column :applies, :attachment, :string
  end
end
