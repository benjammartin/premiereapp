class CgusController < ApplicationController
  # GET /cgus
  # GET /cgus.json
  def index
    @cgus = Cgu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cgus }
    end
  end

  # GET /cgus/1
  # GET /cgus/1.json
  def show
    @cgu = Cgu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cgu }
    end
  end

  # GET /cgus/new
  # GET /cgus/new.json
  def new
    @cgu = Cgu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cgu }
    end
  end

  # GET /cgus/1/edit
  def edit
    @cgu = Cgu.find(params[:id])
  end

  # POST /cgus
  # POST /cgus.json
  def create
    @cgu = Cgu.new(params[:cgu])

    respond_to do |format|
      if @cgu.save
        format.html { redirect_to @cgu, notice: 'Cgu was successfully created.' }
        format.json { render json: @cgu, status: :created, location: @cgu }
      else
        format.html { render action: "new" }
        format.json { render json: @cgu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cgus/1
  # PUT /cgus/1.json
  def update
    @cgu = Cgu.find(params[:id])

    respond_to do |format|
      if @cgu.update_attributes(params[:cgu])
        format.html { redirect_to @cgu, notice: 'Cgu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cgu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cgus/1
  # DELETE /cgus/1.json
  def destroy
    @cgu = Cgu.find(params[:id])
    @cgu.destroy

    respond_to do |format|
      format.html { redirect_to cgus_url }
      format.json { head :no_content }
    end
  end
end
