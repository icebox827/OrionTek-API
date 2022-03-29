module Api
  module V1
    class CompaniesController < ApplicationController
      # Display company
      def show
        @company = Company.find(params[:id])
        render json: @company
      end

      # Create company
      def create
        @company = Company.new(company_params)

        if @company.save
          render json: { messages: 'Created successfully' }, status: 200
        else
          render json: { error: @company.errors.full_messages }, status: 422
        end
      end

      # Update company
      def update
        @company = Company.find(params[:id])

        if @company.update(company_params)
          render json: @company
        else
          render json: { error: @company.errors.full_messages }, status: 422
        end
      end

      private

      # Set company parameters
      def company_params
        params.require(:name)
      end
    end
  end
end
