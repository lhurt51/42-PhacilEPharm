class PerscriptionsController < ApplicationController
  before_action :set_perscription, only: [:show, :edit, :update, :destroy]

  # GET /perscriptions
  # GET /perscriptions.json
  def index
    @perscriptions = Perscription.all
  end

  # GET /perscriptions/1
  # GET /perscriptions/1.json
  def show
  end

  # GET /perscriptions/new
  def new
    @perscription = Perscription.new
  end

  # GET /perscriptions/1/edit
  def edit
  end

  # POST /perscriptions
  # POST /perscriptions.json
  def create
    @perscription = Perscription.new(perscription_params)

    respond_to do |format|
      if @perscription.save
        format.html { redirect_to @perscription, notice: 'Perscription was successfully created.' }
        format.json { render :show, status: :created, location: @perscription }
      else
        format.html { render :new }
        format.json { render json: @perscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perscriptions/1
  # PATCH/PUT /perscriptions/1.json
  def update
    respond_to do |format|
      if @perscription.update(perscription_params)
        format.html { redirect_to @perscription, notice: 'Perscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @perscription }
      else
        format.html { render :edit }
        format.json { render json: @perscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perscriptions/1
  # DELETE /perscriptions/1.json
  def destroy
    @perscription.destroy
    respond_to do |format|
      format.html { redirect_to perscriptions_url, notice: 'Perscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perscription
      @perscription = Perscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perscription_params
      params.require(:perscription).permit(:drug_name, :dosage, :refils)
    end
end
