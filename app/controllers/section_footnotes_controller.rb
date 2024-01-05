class SectionFootnotesController < InheritedResources::Base

  before_action :set_footnote, only: [:update]

  def create
    @section_footnote = SectionFootnote.new(section_footnote_params)

    if @section_footnote.save
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
    @section_footnote = SectionFootnote.new
    @section_id = params[:section_id]
  end

  def show
    @section_footnote = SectionFootnote.find(params[:id])
  end

  def edit
    @section_footnote = SectionFootnote.find(params[:footnote_id])
    @section_id = @section_footnote.section_id
  end

  def update
    if @footnote.update(section_footnote_params)
      respond_to do |format|
       format.html {redirect_to edit_section_body_path(@section_note.section_id), notice: "Note was successfully created." }
       format.turbo_stream
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def set_footnote
      @footnote = SectionFootnote.find(params[:id])
    end

    def section_footnote_params
      params.require(:section_footnote).permit(:a_number, :footnote, :section_id)
    end
end

