class PropertiesController < ApplicationController
    def index
        properties = Property.all
        render json: properties
    end

    def show
        property = Property.find(params[:id])
        render json: property
    end

    def create
        new_id = Agent.find_or_create_by(name: params[:agent]).id
        property = Property.create(address: params[:address], image: params[:image], status: params[:status], agent_id: new_id)
        render json: property
    end

    def update
        property = Property.find(params[:id])
        property.update(status: params[:status])
        render json: property
    end

    def destroy
        Property.find(params[:id]).destroy
        render json: {message:'Your Listing Has Been Successfully Removed'}
    end 

    # private

    # def property_params
    #     params.require(:property).permit(:address, :image, :status, :agent_id)
    # end
end
