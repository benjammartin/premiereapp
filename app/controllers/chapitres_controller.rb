class ChapitresController < ApplicationController
  # GET /chapitres
  # GET /chapitres.json
  def index
    @chapitres = Chapitre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chapitres }
    end
  end

  # GET /chapitres/1
  # GET /chapitres/1.json
  def show
    @chapitre = Chapitre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chapitre }
    end
  end

  # GET /chapitres/new
  # GET /chapitres/new.json
  def new
    @chapitre = Chapitre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chapitre }
    end
  end

  # GET /chapitres/1/edit
  def edit
    @chapitre = Chapitre.find(params[:id])
  end

  # POST /chapitres
  # POST /chapitres.json
  def create
    @chapitre = Chapitre.new(params[:chapitre])

    respond_to do |format|
      if @chapitre.save
        format.html { redirect_to @chapitre, notice: 'Chapitre was successfully created.' }
        format.json { render json: @chapitre, status: :created, location: @chapitre }
      else
        format.html { render action: "new" }
        format.json { render json: @chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chapitres/1
  # PUT /chapitres/1.json
  def update
    @chapitre = Chapitre.find(params[:id])

    respond_to do |format|
      if @chapitre.update_attributes(params[:chapitre])
        format.html { redirect_to @chapitre, notice: 'Chapitre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chapitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapitres/1
  # DELETE /chapitres/1.json
  def destroy
    @chapitre = Chapitre.find(params[:id])
    @chapitre.destroy

    respond_to do |format|
      format.html { redirect_to chapitres_url }
      format.json { head :no_content }
    end
  end
end
