class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :phone_no
      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
