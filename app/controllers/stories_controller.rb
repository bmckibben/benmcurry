class StoriesController < InheritedResources::Base

  require 'nokogiri'

  def manuscript
  	story = params[:story_id] 
  	@story = Story.find(story)
    @sections = Section.where(story_id: params[:story_id] ).where("draft > 0").order(sequence: :asc)
    render layout: "print"
  end
	
  def download_json
    @sections = Section.where(story_id: params[:story_id] ).order(sequence: :asc).includes(:section_footnotes)
    render json: @sections.to_json(include: :section_footnotes)
  end

  private

    def story_params
      params.require(:story).permit(:title, :subtitle, :abbreviated_title, :short_summary, :long_summary, :word_count)
    end
end

