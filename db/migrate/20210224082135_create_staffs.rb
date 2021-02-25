class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :position
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
