class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :ball
      t.integer :weight
      t.timestamps
    end
  end
end
