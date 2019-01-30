# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Issue, type: :model do
  subject { described_class.new(params).valid? }

  describe 'valid params' do
    let(:params) { FactoryBot.build(:issue).attributes }
    it { is_expected.to be_truthy }
  end

  describe 'invalid params' do
    let(:params) { {} }
    it { is_expected.to be_falsey }
  end
end
