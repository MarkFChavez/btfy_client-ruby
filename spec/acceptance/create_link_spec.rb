require "spec_helper"

RSpec.describe "#create_link", vcr: { record: :once, match_requests_on: [:host] } do

  let(:client) do
    BtfyClient.new(
      host: CONFIG[:host],
      api_token: CONFIG[:api_token],
    )
  end

  context "destination_url is present" do
    it "calls [POST] /api/v1/links" do
      create_link_response = client.create_link(
        destination_url: "https://markonsoftware.com",
        name: "markonsoftware",
      )

      link = create_link_response.link

      expect(create_link_response).to be_success
      expect(link.id).to be_present
      expect(link.name).to eq "markonsoftware"
      expect(link.slug).to be_present
      expect(link.destination_url).to be_present
      expect(link.redirect_url).to be_present
    end
  end

  context "destination_url is nil" do
    it "returns an error" do
      expect {
        client.create_link(
          destination_url: nil,
          name: "markonsoftware",
          slug: "markweb",
        )
      }.to raise_error ArgumentError
    end
  end

end
