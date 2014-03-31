class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :string
      t.column :due_date, :date

      t.timestamps
    end
  end
end
