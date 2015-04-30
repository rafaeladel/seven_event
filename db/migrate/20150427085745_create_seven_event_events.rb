class CreateSevenEventEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_at
      t.timestamps null: false
    end
  end
end
