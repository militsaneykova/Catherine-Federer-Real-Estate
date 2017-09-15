class ApartmentsController < ApplicationController
    def index 
    end

    def new 
        @apartment = Apartment.new
    end

    def create
        @apartment = Apartment.new(apartment_params)
    end

    private

    def apartment_params
        params.require(:apartment).permit(:photo, :title, :address, :bedrooms, :bathrooms, :description, :price, :landlord_id)
    end
end
