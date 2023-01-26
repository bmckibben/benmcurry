class CreatePicks < ActiveRecord::Migration[7.0]
  def change
    create_table :picks do |t|
      t.datetime :draw_date
      t.integer :b1
      t.integer :s1
      t.boolean :m1
      t.integer :b2
      t.integer :s2
      t.boolean :m2
      t.integer :b3
      t.integer :s3
      t.boolean :m3
      t.integer :b4
      t.integer :s4
      t.boolean :m4
      t.integer :b5
      t.integer :s5
      t.boolean :m5
      t.integer :powerball
      t.integer :powerscore
      t.boolean :powermatch
      t.decimal :won

      t.timestamps
    end
  end
end
