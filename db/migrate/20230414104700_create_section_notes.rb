class CreateSectionNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :section_notes do |t|
    t.text "note"
    t.bigint "section_id"

      t.timestamps
    end
  end
end
