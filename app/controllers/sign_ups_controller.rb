class SignUpsController < ApplicationController
    def new
        @sign_ups = Sign_up.new

        render :new
    end

    def create 
        @sign_up = Sign_up.new(sign_up_params)

        if @sign_up.save
            redirect_to camper_path(@camper.id)
        else
            render :new
        end
    end

    private

    def sign_up_params
        params.require(:sign_up).permit(:camper_id, :activity_id, :time)
    end
end