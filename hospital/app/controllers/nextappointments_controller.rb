class NextappointmentsController < ApplicationController
  before_action :set_nextappointment, only: [:show, :edit, :update, :destroy]

  # GET /nextappointments
  # GET /nextappointments.json
  def index
    @nextappointments = Nextappointment.all
  end

  # GET /nextappointments/1
  # GET /nextappointments/1.json
  def show
  end

  # GET /nextappointments/new
  def new
    @nextappointment = Nextappointment.new
  end

  # GET /nextappointments/1/edit
  def edit
  end

  # POST /nextappointments
  # POST /nextappointments.json
  def create
    @nextappointment = Nextappointment.new(nextappointment_params)

    respond_to do |format|
      if @nextappointment.save
        format.html { redirect_to @nextappointment, notice: 'Nextappointment was successfully created.' }
        format.json { render :show, status: :created, location: @nextappointment }
      else
        format.html { render :new }
        format.json { render json: @nextappointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nextappointments/1
  # PATCH/PUT /nextappointments/1.json
  def update
    respond_to do |format|
      if @nextappointment.update(nextappointment_params)
        format.html { redirect_to @nextappointment, notice: 'Nextappointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @nextappointment }
      else
        format.html { render :edit }
        format.json { render json: @nextappointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nextappointments/1
  # DELETE /nextappointments/1.json
  def destroy
    @nextappointment.destroy
    respond_to do |format|
      format.html { redirect_to nextappointments_url, notice: 'Nextappointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nextappointment
      @nextappointment = Nextappointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nextappointment_params
      params.require(:nextappointment).permit(:date_of_next_appointment, :reason_for_visit, :appointment_id)
    end
end
