class DropHistory < ActiveRecord::Migration[7.0]
  def change
  		drop_table :histories
  end
end
