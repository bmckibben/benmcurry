# == Schema Information
#
# Table name: sections
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  sequence    :integer
#  summary     :text
#  body        :text
#  throughline :string(255)
#  resolution  :text
#  conflict    :text
#  story_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_sections_on_story_id  (story_id)
#

class Section < ActiveRecord::Base
	has_many :section_footnotes
	has_many :section_notes

	validates :title, presence: true
	validates :story_id, presence: true

	has_rich_text :content

	def word_count
		body.to_s.gsub(/<[^>]*>/ui,'').split.size
	end

	def story_title
		Story.find(self.story_id).title
	end
end
