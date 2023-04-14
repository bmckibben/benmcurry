class AddFieldsToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :goal, :text
    add_column :sections, :disaster, :text
    add_column :sections, :reaction, :text
    add_column :sections, :dilemma , :text
    add_column :sections, :q1, :text 
    add_column :sections, :q2, :text
    add_column :sections, :q3, :text
  end
end
