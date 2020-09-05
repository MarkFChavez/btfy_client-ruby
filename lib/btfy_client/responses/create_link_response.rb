module BtfyClient
  class CreateLinkResponse
    
    include APIClientBase::Response.module

    attribute :body, Object, lazy: true, default: :default_body
    attribute :link, BtfyClient::Link, default: :default_link

    private

    def default_body
      raw_response.body
    end

    def default_link
      args = {}

      JSON.parse(body).each do |key, value|
        args[key] = value
      end

      Link.new(args["link"])
    end

  end
end
