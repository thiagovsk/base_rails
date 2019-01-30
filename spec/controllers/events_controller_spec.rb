# frozen_string_literal: true

require 'rails_helper'
RSpec.describe EventsController, type: :controller do
  let(:valid_attributes) do
    FactoryBot.build(:event).attributes
  end

  let(:invalid_attributes) do
    {}
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Event.create(valid_attributes)
      get :index, params: { issue_id: 1 }, session: valid_session
      expect(response).to be_successful
    end
  end
end
