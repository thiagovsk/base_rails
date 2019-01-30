# frozen_string_literal: true
module Api
  module V1


class EventsController < ApplicationController
  before_action :set_event, only: %i[show update destroy]

  # GET /events
  def index
    @events = Event.where(issue_id: params[:issue_id])

    render json: @events
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.create_issue(id: @event.issue_id, state: @event.action) unless @event.issue
    if @event.save
      render json: EventSerializer.new(@event).serialized_json, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params[:issue_id] = params['issue']['number']
    params.permit(:action, :issue_id)
  end
end
end
end
