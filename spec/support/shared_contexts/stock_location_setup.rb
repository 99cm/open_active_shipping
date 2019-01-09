shared_context 'US stock location' do
  let!(:stock_location) do
    create :stock_location,
      address1: '1600 Pennsylvania Ave NW',
      city: 'Washington',
      zipcode: '20500',
      state: create(:state_with_autodiscover, state_code: 'DC')
  end
end