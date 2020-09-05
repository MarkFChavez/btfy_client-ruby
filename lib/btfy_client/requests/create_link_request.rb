module BtfyClient
  class CreateLinkRequest < BaseRequest

    include APIClientBase::Request

    attribute :destination_url, String
    attribute :name,            String
    attribute :slug,            String

    def body
      body = { destination_url: destination_url }
      
      if name.present?
        body = body.merge(name: name)
      end

      if slug.present?
        body = body.merge(slug: slug)
      end

      body.to_json
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
