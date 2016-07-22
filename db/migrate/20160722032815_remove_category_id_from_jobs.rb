class RemoveCategoryIdFromJobs < ActiveRecord::Migration
  def change
    remove_reference :jobs, :category,index: true, foreign_key: true
  end
end
