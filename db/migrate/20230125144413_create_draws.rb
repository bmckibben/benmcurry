class CreateDraws < ActiveRecord::Migration[7.0]
  def change
    create_table :draws do |t|
      t.datetime :draw_date
      t.integer :b1
      t.integer :s1
      t.integer :b2
      t.integer :s2
      t.integer :b3
      t.integer :s3
      t.integer :b4
      t.integer :s4
      t.integer :b5
      t.integer :s5
      t.integer :powerball
      t.integer :powerscore

      t.timestamps
    end
  end
end
