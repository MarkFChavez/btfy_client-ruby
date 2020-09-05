module BtfyClient
  class CreateLinkResponse
    
    include APIClientBase::Response.module

    attribute :body, Object, lazy: true, default: :default_body

    private

    def default_body
      raw_response.body
    end

  end
end
