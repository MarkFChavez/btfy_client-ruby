require "spec_helper"

module BtfyClient
  module Requests
    RSpec.describe CreateLinkRequest do

      describe "#headers" do
        let(:request) do
          described_class.new(
            host: "something.com",
            api_token: "api-token",
            destination_url: "destination-url.com",
            name: "name",
            slug: "slug",
          )
        end

        it "contains the headers" do
          aggregate_failures do
            expect(request.headers["Content-Type"]).to eq "application/json"
            expect(request.headers["Authorization"]).to eq "Bearer api-token"
            expect(request.destination_url).to eq "destination-url.com"
            expect(request.name).to eq "name"
            expect(request.slug).to eq "slug"
          end
        end
      end

    end
  end
end
