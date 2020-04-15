class AddSlugToPublicationsController < ApplicationController
  before_action :set_add_slug_to_publication, only: [:show, :edit, :update, :destroy]

  # GET /add_slug_to_publications
  # GET /add_slug_to_publications.json
  def index
    @add_slug_to_publications = AddSlugToPublication.all
  end

  # GET /add_slug_to_publications/1
  # GET /add_slug_to_publications/1.json
  def show
  end

  # GET /add_slug_to_publications/new
  def new
    @add_slug_to_publication = AddSlugToPublication.new
  end

  # GET /add_slug_to_publications/1/edit
  def edit
  end

  # POST /add_slug_to_publications
  # POST /add_slug_to_publications.json
  def create
    @add_slug_to_publication = AddSlugToPublication.new(add_slug_to_publication_params)

    respond_to do |format|
      if @add_slug_to_publication.save
        format.html { redirect_to @add_slug_to_publication, notice: 'Add slug to publication was successfully created.' }
        format.json { render :show, status: :created, location: @add_slug_to_publication }
      else
        format.html { render :new }
        format.json { render json: @add_slug_to_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_slug_to_publications/1
  # PATCH/PUT /add_slug_to_publications/1.json
  def update
    respond_to do |format|
      if @add_slug_to_publication.update(add_slug_to_publication_params)
        format.html { redirect_to @add_slug_to_publication, notice: 'Add slug to publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_slug_to_publication }
      else
        format.html { render :edit }
        format.json { render json: @add_slug_to_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_slug_to_publications/1
  # DELETE /add_slug_to_publications/1.json
  def destroy
    @add_slug_to_publication.destroy
    respond_to do |format|
      format.html { redirect_to add_slug_to_publications_url, notice: 'Add slug to publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_slug_to_publication
      @add_slug_to_publication = AddSlugToPublication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_slug_to_publication_params
      params.fetch(:add_slug_to_publication, {})
    end
end
