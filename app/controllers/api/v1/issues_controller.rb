# frozen_string_literal: true
module Api
  module V1

  class IssuesController < ApplicationController
      before_action :set_issue, only: %i[show update destroy]

      # GET /issues
      def index
        @issues = Issue.all

        render json: @issues
      end

      private

      def set_issue
        @issue = Issue.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def issue_params
        params.require(:issue).permit(:state)
      end
    end
  end
end
