module Api
  module V1
    class AddressesController < ApplicationController
      # display addresses
      def index
        @addresses = Address.all
        render json: @addresses
      end

      # Display a single address
      def show
        @address = Address.find(params[:id])
        render json: @address
      end

      # Create addresses
      def create
        @address = Address.new(address_params)

        if @address.save
          render json: @address, status: :Created
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Update addresses
      def update
        @address = Address.find(params[:id])

        if @address.update(address_params)
          render json: @address, status: :created
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Detroy addresses
      def destroy
        @address = Address.find(params[:id])

        if @address.destroy
          render json: { status: 'success' }
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      private

      # Set address parameters
      def address_params
        params.permit(:street, :city, :state, :zip, :client_id)
      end
    end
  end
end
