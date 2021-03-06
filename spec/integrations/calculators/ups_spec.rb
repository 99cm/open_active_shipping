require 'spec_helper'

describe 'UPS calculators', :vcr do
  include_context 'UPS setup'
  include_context 'US package setup'

  subject { described_class.new.compute_package(package) }

  context 'with US origin address' do
    include_context 'US stock location'

    describe Spree::Calculator::Shipping::Ups::Ground do
      it { is_expected.to eq(14.2) }
    end

    describe Spree::Calculator::Shipping::Ups::NextDayAir do
      it { is_expected.to eq(79.47) }
    end

    describe Spree::Calculator::Shipping::Ups::NextDayAirEarlyAm do
      it { is_expected.to eq(110.29) }
    end

    describe Spree::Calculator::Shipping::Ups::NextDayAirSaver do
      it { is_expected.to eq(77.46) }
    end

    describe Spree::Calculator::Shipping::Ups::SecondDayAir do
      it { is_expected.to eq(27.97) }
    end
  end
end