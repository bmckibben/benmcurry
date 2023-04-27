class AddSampleFlagToSections < ActiveRecord::Migration[7.0]
  def change
  	add_column :sections, :sample, :boolean, default: false
  end
end
