require 'omniauth'

module Omniauth
  module Strategies
    class Wattpad 
      include OmniAuth::Strategy

      args [:api_key, :redirect_uri]

      option :authorize_url, "https://www.wattpad.com/oauth/code"

      def request_phase
        redirect request_url
      end

      private

      def request_url
        "#{options.authorize_url}?api_key=#{options.api_key}&scope=read&redirect_uri=#{options.redirect_uri}"
      end

    end
  end
end