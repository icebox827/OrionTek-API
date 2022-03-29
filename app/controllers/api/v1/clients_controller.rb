module Api
  module V1
    class ClientsController < ApplicationController
      # Display all the clients
      def index
        @clients = Client.all
        render json: @clients
      end

      # Display a single client
      def show 
        @client = Client.find(params[:id])
        render json: @client
      end

      # Create clients
      def create
        @client = @company.clients.build(client_params)

        if @client.save
          render json: { message: 'Client created successfully' }, status: 200
        else
          render json: { error. @client.errors.full_messages }, status: 422
        end
      end

      # Update clients
      def update
        @client = Company.find(params[:id])

        if @client.update(client_params)
          render json: @client, status: :updated
        else
          render json: { error. @client.errors.full_messages }, status: 422
        end
      end

      # destroy clients
      def destroy
        @client = Company.find(params[:id])

        if @client.destroy
          render json: { status: 'success' }
        else
          render json: { error. @client.errors.full_messages }, status: 422
        end 
      end

      private
      # Client parameters
      def client_params
        params.permit(:client).require(:first_name, :last_name, :email, :phone)
      end
    end
  end
end