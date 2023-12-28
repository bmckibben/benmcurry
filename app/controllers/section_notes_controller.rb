class SectionNotesController < InheritedResources::Base

	# def new
	# 	@section_options = Section.all.order(:sequence)
	# 	@section_note = SectionNote.new
	# end
  
  def create
    
    @note = SectionNote.new(section_note_params)
    # respond_to do |format|

    #   if @note.save
    #     format.html 
    #     format.js { render  "sections/close_modal"}
    #   else
    #     format.html 
    #     format.js { render "home/error_alert", locals: {message: "Note save error"} }
    #   end
    # end
  end

  private

    def section_note_params
      params.require(:section_note).permit(:note, :section_id)
    end
end

