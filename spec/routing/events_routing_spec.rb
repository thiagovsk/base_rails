# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EventsController, type: :routing do
  describe 'routing' do
    it 'routes to #index with issues' do
      expect(get: '/issues/1/events').to route_to('events#index', issue_id: '1')
    end

    it 'routes to #create' do
      expect(post: '/events').to route_to('events#create')
    end
  end
end
