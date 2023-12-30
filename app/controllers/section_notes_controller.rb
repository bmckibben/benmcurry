class SectionNotesController < InheritedResources::Base

	# def new
	# 	@section_options = Section.all.order(:sequence)
	# 	@section_note = SectionNote.new
	# end
  
  def create
    @section_note = SectionNote.new(section_note_params)

    if @section_note.save
      #@chapters = Section.where(story_id: @section.story_id).order(sequence: :asc)

      respond_to do |format|
       format.html {redirect_to edit_section_body_path(@section_note.section_id), notice: "Note was successfully created." }
       format.turbo_stream
     end
    else
      render :new, status: :unprocessable_entity
    end
    
  end

  def new
    @section_note = SectionNote.new
    @section_id = params[:section_id]
  end

  def show
    @section_note = SectionNote.find(params[:id])
  end

  def edit
  end

  private

    def section_note_params
      params.require(:section_note).permit(:note, :section_id)
    end
end

