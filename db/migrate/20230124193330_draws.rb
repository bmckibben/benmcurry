class Draws < ActiveRecord::Migration[7.0]
  def change
    create_table :draws do |t|
      t.integer :b1
      t.integer :b2
      t.integer :b3
      t.integer :b4
      t.integer :b5
      t.integer :b6
      t.integer :pw
      t.datetime :draw_date
    end 
  end
end
