require 'rails_helper'

describe "post a brewery route", :type => :request do

  before do
    post '/breweries', params: { :name => 'test_name', :street => 'test_street', :city => 'test_city', :state => 'test_state', :dog_friendly => 'test_dog', :zip => 12345, :outdoor => 'test_outdoor', :park_nearby => 'test_park' }
  end

  it 'returns the brewery name' do
    binding.pry
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the brewery street' do
    expect(JSON.parse(response.body)['street']).to eq('test_street')
  end

  it 'returns the brewery city' do
    expect(JSON.parse(response.body)['city']).to eq('test_city')
  end

  it 'returns the brewery state' do
    expect(JSON.parse(response.body)['state']).to eq('test_state')
  end

  it 'returns the brewery dog options' do
    expect(JSON.parse(response.body)['dog_friendly']).to eq('test_dog')
  end

  it 'returns the brewery zip' do
    expect(JSON.parse(response.body)['zip']).to eq(12345)
  end

  it 'returns the brewery outdoor options' do
    expect(JSON.parse(response.body)['outdoor']).to eq('test_outdoor')
  end

  it 'returns the brewery park vicinity' do
    expect(JSON.parse(response.body)['park_nearby']).to eq('test_park')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
