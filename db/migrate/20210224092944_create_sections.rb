class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :standard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
