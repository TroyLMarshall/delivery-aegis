# frozen_string_literal: true

json.array! @deliveries, partial: "deliveries/delivery", as: :delivery
