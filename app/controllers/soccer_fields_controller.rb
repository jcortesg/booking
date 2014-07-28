class SoccerFieldsController < ApplicationController
  before_action :set_soccer_field, only: [:show, :edit, :update, :destroy]
	
	def show
  	@reservation = Reservation.new
		@reservations = @soccerField.reservations
	end

  def create
		venue = Venue.find(params[:venue_id])
		@soccerField = SoccerField.new(soccer_field_params)
		respond_to do |format|
			if venue.soccer_fields << @soccerField
				format.html { redirect_to @soccerField, notice: 'Company was successfully created.' }		
			else
				format.html { render :new }
			end
		end
	end

  def update
  end

  def edit
  end

  def destroy
  end
 

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_soccer_field
      @soccerField = SoccerField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soccer_field_params
      params.require(:soccer_field).permit(:name,:description,:picture)
    end
	
end
