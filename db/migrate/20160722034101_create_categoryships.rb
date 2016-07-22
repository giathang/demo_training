class CreateCategoryships < ActiveRecord::Migration
  def change
    create_table :categoryships do |t|
      t.references :job, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
