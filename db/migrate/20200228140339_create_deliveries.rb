# frozen_string_literal: true

# Create the initial deliveries table
class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.string :description

      t.timestamps
    end
  end
end
