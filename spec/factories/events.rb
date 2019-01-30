# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    action { 'open' }
    issue
    initialize_with { new(issue: issue) }
  end
end
