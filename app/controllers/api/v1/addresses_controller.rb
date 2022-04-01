module Api
  module V1
    class AddressesController < ApplicationController
      before_action :set_client, only: %i[show update destroy]
      before_action :get_client

      # display addresses
      def index
        @addresses = @client.addresses
        render json: @addresses
      end

      # Display a single address
      def show
        @address = @client.addresses.build(params[:id])
        render json: @address
      end

      # Create addresses
      def create
        @address = @client.addresses.build(address_params)

        if @address.save
          render json: @address, status: :Created
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Update addresses
      def update
        @address = @client.addresses.find(params[:id])

        if @address.update(address_params)
          render json: @address, status: :created
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Detroy addresses
      def destroy
        @address = @client.addresses.find(params[:id])

        if @address.destroy
          render json: { status: 'success' }
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      private
      # Get clients
      def get_client
        @client = Client.find(params[:client_id])
      end

      # Set address parameters
      def address_params
        params.permit(:street, :city, :state, :zip, :client_id)
      end
    end
  end
end
