module BtfyClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)

    attribute :host,      String
    attribute :api_token, String

    api_action :create_link

    private

    def default_opts
      { host: host, api_token: api_token }
    end

  end
end
