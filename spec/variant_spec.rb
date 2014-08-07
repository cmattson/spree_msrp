require 'spec_helper'

describe Spree::Variant do
  describe '#msrp' do
    it 'returns the msrp if it is present' do
      variant = create(:variant, msrp: 12.34)
      expect(variant.msrp).to eq(12.34)
    end

    it 'returns the variant msrp' do
      product = create(:product, msrp: 33.99)
      variant = create(:variant, msrp: 44.99, product: product)
      expect(variant.msrp).to eq(44.99)
    end
  end
end
