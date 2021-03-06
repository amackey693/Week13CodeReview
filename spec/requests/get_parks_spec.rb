require 'rails_helper'

describe 'get all parks route' do
  before { get '/parks' }
  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(Park.all.count)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get an individual park route' do
  it 'returns a park' do
    @test_park = Park.create!({name: "Another Test Park", address: "Test Address", website: "testwebsite.com", phone_number: "503-123-1234", open: true})
    get "/parks/#{@test_park.id}"
    expect(JSON.parse(response.body)['name']).to eq("Another Test Park")
  end

  it 'returns an error when fetching a park that does not exist' do
    get '/parks/1' 
    expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Park with 'id'=1")
  end

end

describe 'search path' do
  it 'returns all state parks based on search query' do
    test_park = Park.create!({name: "Test Park", address: "Test Address", website: "testwebsite.com", phone_number: "503-123-1234", open: true})
    get '/search?query=test'
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns message when search result returns no matches' do
    get '/search?query=testing123'
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq("It doesn't look like your search for testing123 returned any results, please try again")
  end
end
