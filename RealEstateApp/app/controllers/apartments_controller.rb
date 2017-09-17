class ApartmentsController < ApplicationController
    before_action :single_apartment, only: [:show, :edit, :update, :destroy] 
    before_action :authenticate_user!, except: [:index] 
    def index 
        @apartments = Apartment.all
    end

    def show
    end

    def new 
        #If i want to use user_id i have to make the routes nested if not use build (stackoverflow)
       @apartment = current_user.apartments.build
    end

    def create
        @apartment = current_user.apartments.build(apartment_params)
        
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
