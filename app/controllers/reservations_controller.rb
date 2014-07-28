class ReservationsController < ApplicationController
  before_action :set_company, only: [:update, :destroy]
	
	def index
  end

  def create
		soccer_field = SoccerField.find(params[:soccer_field_id])
		@reservation = Reservation.new(reservation_params)	
		respond_to do |format|
			if soccer_field.reservations << @reservation
				format.html { redirect_to soccer_field_path(soccer_field), notice: 'Company was successfully created.' }
			else
			end
		end	
	end

  def update
  end

  def destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:day,:start_hour,:unit)
    end
end
