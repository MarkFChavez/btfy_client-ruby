require "json"
require "api_client_base"

require "btfy_client/version"
require "btfy_client/client"

require "btfy_client/models/link"
require "btfy_client/requests/base_request"
require "btfy_client/requests/create_link_request"
require "btfy_client/responses/create_link_response"

BTFY_CLIENT_DIR = Pathname.new(File.dirname(__FILE__)).
  join("btfy_client")

%w(models requests responses).each do |dir|
  Dir[BTFY_CLIENT_DIR.join(dir, "*.rb")].each { |f| require f }
end

module BtfyClient

  include APIClientBase::Base.module

  with_configuration do
    has :host,      classes: String
    has :api_token, classes: String
  end

end
