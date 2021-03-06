# frozen_string_literal: true

require "rails_helper"

RSpec.describe "deliveries/new", type: :view do
  before(:each) do
    assign(:delivery, Delivery.new(
                        description: "MyString"
                      ))
  end

  it "renders new delivery form" do
    render

    assert_select "form[action=?][method=?]", deliveries_path, "post" do
      assert_select "input[name=?]", "delivery[description]"
    end
  end
end
