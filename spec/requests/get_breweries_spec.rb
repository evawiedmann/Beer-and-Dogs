require 'rails_helper'

describe "get all breweries routes", :type => :request do
  let!(:breweries) { FactoryBot.create_list(:brewery, 20)}

  before { get '/breweries'}

  it 'returns all breweries' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
