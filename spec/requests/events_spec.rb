# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Events', type: :request do
  describe 'GET /issues/1/events' do
    it 'works with issue id' do
      get issue_events_path(1)
      expect(response).to have_http_status(200)
    end
  end
end
