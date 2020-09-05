module BtfyClient
  class CreateLinkRequest

    include APIClientBase::Request

    attribute :host, String
    attribute :api_token, String
    attribute :destination_url, String

    def headers
      {
        "Content-Type"  => "application/json",
        "Authorization" => "Bearer #{api_token}",
      }
    end

    def body
      { destination_url: destination_url }.to_json
    end

    private

    def path
      "/api/v1/links"
    end

    def default_action
      :post
    end

  end
end
