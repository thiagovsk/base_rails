class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :action, :created_at, :updated_at
end
