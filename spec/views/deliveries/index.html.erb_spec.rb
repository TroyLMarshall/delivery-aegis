# frozen_string_literal: true

require "rails_helper"

RSpec.describe "deliveries/index", type: :view do
  before(:each) do
    assign(:deliveries, [
             Delivery.create!(
               description: "Description"
             ),
             Delivery.create!(
               description: "Description"
             )
           ])
  end

  it "renders a list of deliveries" do
    render
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
