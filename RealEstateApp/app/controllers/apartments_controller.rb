class ApartmentsController < ApplicationController
    before_action :single_apartment, only: [:show, :edit, :update, :destroy]  
    def index 
        @apartments = Apartment.all.order('created_at DESC')
    end

    def show
    end

    def new 
        @apartment = Apartment.new
    end

    def create
        @apartment = Apartment.new(apartment_params)

        if @apartment.save 
            redirect_to '/'
        else
            render 'new'
        end
    end
    def edit
    end

    def update
        if @apartment.update(apartment_params)
            redirect_to apartment_path(@apartment)
        else
            render 'edit'
        end
    end

    def destroy
        @apartment.destroy
        redirect_to '/'
    end

    private

    def apartment_params
        params.require(:apartment).permit(:photo, :title, :address, :bedrooms, :bathrooms, :description, :price, :user_id)
    end

    def single_apartment
        @apartment = Apartment.find(params[:id])
    end    
end
