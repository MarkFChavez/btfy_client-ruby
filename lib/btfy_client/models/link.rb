module BtfyClient
  class Link

    include Virtus.model

    attribute :id,              Integer
    attribute :name,            String
    attribute :slug,            String
    attribute :destination_url, String
    attribute :redirect_url,    String

  end
end
