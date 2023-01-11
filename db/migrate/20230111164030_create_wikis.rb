class CreateWikis < ActiveRecord::Migration[7.0]
  def change
    create_table :wikis do |t|
      t.string :title
      t.integer :user_id
      t.text :body
      t.integer :parent
      t.string :version
      t.string :integer
      t.boolean :deleted
      t.integer :default_sort
      t.datetime :last_revision

      t.timestamps
    end
  end
end
