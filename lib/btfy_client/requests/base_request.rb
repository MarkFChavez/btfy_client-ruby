module BtfyClient
  class BaseRequest

    include APIClientBase::Request

    attribute :host,            String
    attribute :api_token,       String

    def headers
      {
        "Content-Type"  => "application/json",
        "Authorization" => "Bearer #{api_token}",
      }
    end

  end
end
