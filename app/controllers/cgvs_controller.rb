class CgvsController < ApplicationController
  # GET /cgvs
  # GET /cgvs.json
  def index
    @cgvs = Cgv.order('created_at')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cgvs }
    end
  end

  # GET /cgvs/1
  # GET /cgvs/1.json
  def show
    @cgv = Cgv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cgv }
    end
  end

  # GET /cgvs/new
  # GET /cgvs/new.json
  def new
    @cgv = Cgv.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cgv }
    end
  end

  # GET /cgvs/1/edit
  def edit
    @cgv = Cgv.find(params[:id])
  end

  # POST /cgvs
  # POST /cgvs.json
  def create
    @cgv = Cgv.new(params[:cgv])

    respond_to do |format|
      if @cgv.save
        format.html { redirect_to @cgv, notice: 'Cgv was successfully created.' }
        format.json { render json: @cgv, status: :created, location: @cgv }
      else
        format.html { render action: "new" }
        format.json { render json: @cgv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cgvs/1
  # PUT /cgvs/1.json
  def update
    @cgv = Cgv.find(params[:id])

    respond_to do |format|
      if @cgv.update_attributes(params[:cgv])
        format.html { redirect_to @cgv, notice: 'Cgv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cgv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cgvs/1
  # DELETE /cgvs/1.json
  def destroy
    @cgv = Cgv.find(params[:id])
    @cgv.destroy

    respond_to do |format|
      format.html { redirect_to cgvs_url }
      format.json { head :no_content }
    end
  end
end
