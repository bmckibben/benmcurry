class Scores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :number
      t.integer :weight
    end 
  end
end
