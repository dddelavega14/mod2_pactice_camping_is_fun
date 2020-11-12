class SignUpsController < ApplicationController
    def new
        @sign_ups = Sign_up.new

        render :new
    end

    def create 
        @sign_up = Sign_up.create!(sign_up_params)

        redirect_to camper_path(sign_up.camper_id)
    end

    private

    def sign_up_params
        params.require(:sign_up).permit(:camper_id, :activity_id, :time)
    end
end