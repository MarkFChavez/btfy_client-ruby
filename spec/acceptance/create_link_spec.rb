require "spec_helper"

RSpec.describe "#create_link", vcr: { record: :once, match_requests_on: [:host] } do

  let(:client) do
    BtfyClient.new(
      host: CONFIG[:host],
      api_token: CONFIG[:api_token],
    )
  end

  it "calls [POST] /api/v1/links" do
    create_link_response = 
      client.create_link(destination_url: "https://markonsoftware.com")

    body = JSON.parse(create_link_response.body)

    expect(create_link_response).to be_success
    expect(body["link"]["id"]).to be_present
    expect(body["link"]["destination_url"]).to be_present
    expect(body["link"]["name"]).to be_present
    expect(body["link"]["slug"]).to be_present
    expect(body["link"]["redirect_url"]).to be_present
  end

end
