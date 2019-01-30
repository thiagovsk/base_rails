# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IssuesController, type: :controller do
  let(:valid_attributes) do
    FactoryBot.build(:issue).attributes
  end

  let(:invalid_attributes) do
    build({})
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Issue.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end
end
