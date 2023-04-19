class SectionsController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_section, only: [:show, :edit, :update, :destroy, :edit_body]

  def edit_note_modal
    
  	@section = Section.find(params[:section_id])

  	if !params[:note_id].nil?
  		@note = @section.section_notes.find(params[:note_id])
  	else
  		@note = @section.section_notes.build()
  	end
    respond_to do |format|
      format.html {render not_found}
      format.js {render 'edit_note_modal'}
    end     
  end

  def edit_footnote_modal
    #binding.pry

    if !params[:footnote_id].nil?
      @footnote = SectionFootnote.find(params[:footnote_id])
      @section = Section.find(@footnote.section_id)
    else
      @section = Section.find(params[:section_id])
      @footnote = @section.section_footnotes.build()
    end   
    render 'edit_footnote_modal'
  end

  def index
    story_id = params[:story_id] || 34
    @sections = Section.where(story_id: story_id).order(sequence: :desc)
  end

  def workbook
    @story_id = params[:story_id] || 3
    @chapters = Section.where(story_id: @story_id).order(sequence: :asc)
  end

  def chapters
    @sections = Section.where(story_id: params[:story_id]).order(sequence: :asc)
  end  
    
  def notes
    @chapters = Section.where(story_id: params[:story_id]).order(sequence: :asc)
  end
  
  def summaries
    story_id = params[:story_id] || 3
    @chapters = Section.where(story_id: story_id).order(sequence: :asc)
  end

  def update
    if @section.update(section_params)
      redirect_to workbook_path(section_params[:story_id]), notice: "Chapter was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end      
  end

  def new
    @section = Section.new
    @section.story_id = params[:story_id]
  end

  def edit_body

   # binding.pry
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      #@chapters = Section.where(story_id: @section.story_id).order(sequence: :asc)
      respond_to do |format|
        format.html {redirect_to workbook_path(@section.story_id), notice: "Chapter was successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @section.destroy

    respond_to do |format|
      format.html { redirect_to workbook_path(@section.story_id), notice: "Section was successfully destroyed." }
      format.turbo_stream
    end
  end

  private

    def set_section
      @section = Section.find(params[:id]) 
    end

    def section_params
      params.require(:section).permit(:title, :sequence, :summary, :body, :throughline, :resolution, :conflict, :story_id, :draft, :goal, :conflict, :disaster, :reaction, :dilemma, :resolution, :q1, :q2, :q3 , :content )
    end
end
