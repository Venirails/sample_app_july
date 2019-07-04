class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :name
      t.integer :age
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
