require './lib/wine_calculator'

describe WineCalculator do
  let(:final_price) do
    WineCalculator.final_price_for(retail_price: retail_price)
  end

  context 'for a wine under 15€' do
    let(:retail_price) { 12 }

    it 'works' do
      expect(final_price).to eq(18.12)
    end
  end

  context 'for a wine between 15€ and 30€' do
    let(:retail_price) { 22.91 }

    it 'works' do
      expect(final_price).to eq(33.80)
    end
  end

  context 'for a wine between 30€ and 50€' do
    let(:retail_price) { 31.12 }

    it 'works' do
      expect(final_price).to eq(45.27)
    end
  end

  context 'for a wine of more than 50€' do
    let(:retail_price) { 50 }

    it 'works' do
      expect(final_price).to eq(70.0)
    end
  end

  context 'for a wine of 100€' do
    let(:retail_price) { 100 }

    it 'works' do
      expect(final_price).to eq(130.5)
    end
  end
end
