require 'rails_helper'

RSpec.describe "payments/edit", :type => :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :user => nil
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input#payment_user_id[name=?]", "payment[user_id]"
    end
  end
end
