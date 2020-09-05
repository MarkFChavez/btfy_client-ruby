require "spec_helper"

module BtfyClient
  module Responses
    RSpec.describe CreateLinkResponse do

      describe "response" do
        let(:body) do
          { link: "hello-world.com" }
        end

        it "returns body" do
          result = described_class.new(body: body)
          expect(result.body).to eq body
        end
      end

    end
  end
end
