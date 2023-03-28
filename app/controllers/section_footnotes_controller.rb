class SectionFootnotesController < InheritedResources::Base

  before_action :set_footnote, only: [:update]

  def create
    
    @footnote = SectionFootnote.new(section_footnote_params)
    respond_to do |format|
      if @footnote.save
        format.html 
        format.js { render  "sections/close_modal"}
      else
      	raise @footnote.errors.inspect
        format.html 
        format.js { render "home/error_alert", locals: {message: "Note save error"} }
      end
    end
  end

  def update

    respond_to do |format|
      if @footnote.update(section_footnote_params)
        format.html 
        format.js { render  "sections/close_modal"}
      else
        raise @footnote.errors.inspect
        format.html 
        format.js { render "home/error_alert", locals: {message: "Note save error"} }
      end
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

