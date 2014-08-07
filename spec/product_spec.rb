require 'spec_helper'

describe Spree::Product do
  describe '#msrp' do
    it 'returns the msrp if it is present' do
      product = create(:product, msrp: 12.34)
      expect(product.msrp).to eq(12.34)
    end
  end
end
