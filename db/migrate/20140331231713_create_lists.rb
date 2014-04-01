class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.column :name, :string
    end

    add_column :tasks, :list_id, :int
  end
end
