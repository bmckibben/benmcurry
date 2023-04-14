class AddDraftToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :draft, :integer, default: 1 
  end
end
