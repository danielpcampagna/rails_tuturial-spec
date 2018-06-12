class PhoneController < ApplicationController
  before_action :set_phone, only: [:show]

  # GET /contacts/1/phone/1
  # GET /contacts/1/phone/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:phone_id, :phone, :phone_type)
    end
end
