class WikisController < ApplicationController
  before_action :set_wiki, only: %i[ show edit update destroy ]

  # GET /wikis or /wikis.json
  def index
    @wikis = Wiki.where("(deleted is null or deleted is false) and (parent is NULL or parent = 0)").order(default_sort: :desc)
    # @wikis.each do |wiki|
    #   raise wiki.all_children.inspect
    # end
    @recents = Wiki.where(updated_at: DateTime.now..1.month.ago).order(updated_at: :desc)
    @menu = view_context.nested_set(view_context.query_menu,'tree-menu', 0)

  end

  # GET /wikis/1 or /wikis/1.json
  def show
  end

  # GET /wikis/new
  def new
    @wiki = Wiki.new
  end

  # GET /wikis/1/edit
  def edit
  end

  # POST /wikis or /wikis.json
  def create
    @wiki = Wiki.new(wiki_params)
    @wiki.version = 1
    respond_to do |format|
      if @wiki.save
        format.html { redirect_to wiki_url(@wiki), notice: "Wiki was successfully created." }
        format.json { render :show, status: :created, location: @wiki }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wikis/1 or /wikis/1.json
  def update
    respond_to do |format|
      if @wiki.update(wiki_params)
        format.html { redirect_to wiki_url(@wiki), notice: "Wiki was successfully updated." }
        format.json { render :show, status: :ok, location: @wiki }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wiki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wikis/1 or /wikis/1.json
  def destroy
    @wiki.destroy

    respond_to do |format|
      format.html { redirect_to wikis_url, notice: "Wiki was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiki
      @wiki = Wiki.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wiki_params
      params.require(:wiki).permit(:title, :user_id, :body, :parent, :version, :deleted, :default_sort, :last_revision)
    end


end
