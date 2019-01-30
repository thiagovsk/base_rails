# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IssuesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/issues').to route_to('issues#index')
    end
  end
end
