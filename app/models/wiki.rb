class Wiki < ApplicationRecord
	belongs_to :user
	
	# gnarly many to many self join
	has_many :wiki_tags
	has_many :tags, through: "wiki_tags", :foreign_key => "tag_id", :class_name => "Wiki"
	
	#accepts_nested_attributes_for :wiki_tags, :allow_destroy => true
	
	attr_accessor :tags, :list_level

  def all_decendents(decendents = [], level = 0)
  	parent_id = self.id
  	parent_title = self.title
    children = Wiki.where(parent: parent_id).order(default_sort: :desc)
    level += 1
    children.each do |child|
    	child.list_level = level
    	decendents << child #"level: #{level} ~~ parent: #{parent_title} ~~ child.title #{child.title} ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>"
     	child.all_decendents(decendents, level)
    end
    decendents
  end

end
