# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { described_class.new(params).valid? }

  describe 'valid params' do
    let(:params) { FactoryBot.build(:event).attributes }
    it { is_expected.to be_truthy }
  end

  describe 'invalid params' do
    let(:params) { {} }
    it { is_expected.to be_falsey }
  end
end
