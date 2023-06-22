class Wiki < ApplicationRecord
	belongs_to :user
	
	# gnarly many to many self join
	has_many :wiki_tags
	has_many :tags, through: "wiki_tags", :foreign_key => "tag_id", :class_name => "Wiki"
	
	#accepts_nested_attributes_for :wiki_tags, :allow_destroy => true
	
	attr_accessor :tags, :decendents

  def all_decendents(children_array = [], level = 0)
  	parent_id = self.id
  	parent_title = self.title
    children = Wiki.where(parent: parent_id)
    children_array += children
    level += 1
    children.each do |child|
    	puts "level: #{level} ~~ parent: #{parent_title} ~~ child.title #{child.title} ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
     	child.all_decendents(children_array, level)
    end
    children_array
  end

end
