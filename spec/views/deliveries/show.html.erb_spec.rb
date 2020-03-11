# frozen_string_literal: true

require "rails_helper"

RSpec.describe "deliveries/show", type: :view do
  before(:each) do
    @delivery = assign(:delivery, Delivery.create!(
                                    description: "Description"
                                  ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
