# frozen_string_literal: true

json.extract! delivery, :id, :description, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
