
class ProteamsController < ApplicationController
  # GET /proteams
  # GET /proteams.json
  def index
    @proteams = Proteam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proteams }
    end
  end

  # GET /proteams/1
  # GET /proteams/1.json
  def show
    @proteam = Proteam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proteam }
    end
  end

  # GET /proteams/new
  # GET /proteams/new.json
  def new
    @proteam = Proteam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proteam }
    end
  end

  # GET /proteams/1/edit
  def edit
    @proteam = Proteam.find(params[:id])
  end

  # POST /proteams
  # POST /proteams.json
  def create
    @proteam = Proteam.new(params[:proteam])

    respond_to do |format|
      if @proteam.save
        format.html { redirect_to @proteam, notice: 'Proteam was successfully created.' }
        format.json { render json: @proteam, status: :created, location: @proteam }
      else
        format.html { render action: "new" }
        format.json { render json: @proteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proteams/1
  # PUT /proteams/1.json
  def update
    @proteam = Proteam.find(params[:id])

    respond_to do |format|
      if @proteam.update_attributes(params[:proteam])
        format.html { redirect_to @proteam, notice: 'Proteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proteams/1
  # DELETE /proteams/1.json
  def destroy
    @proteam = Proteam.find(params[:id])
    @proteam.destroy

    respond_to do |format|
      format.html { redirect_to proteams_url }
      format.json { head :no_content }
    end
  end
end
