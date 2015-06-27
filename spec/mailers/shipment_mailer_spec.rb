require 'spec_helper'

describe Spree::ShipmentMailer do
  let(:shipment) { create(:shipment, order: FactoryGirl.create(:completed_order_with_totals)) }

  context "shipped email" do
    let(:email) { Spree::ShipmentMailer.shipped_email(shipment) }

    it 'renders an HTML email' do
      expect(email.content_type).to match("text/html")
    end
  end
end
