class CreateWikiTags < ActiveRecord::Migration[7.0]
  def change
	  create_table "wiki_tags", force: :cascade do |t|
	    t.integer "wiki_id"
	    t.integer "tag_id"
	    t.timestamps
	    t.index ["tag_id"], name: "index_wiki_tags_on_tag_id"
	    t.index ["wiki_id"], name: "index_wiki_tags_on_wiki_id"
	  end
  end
end
