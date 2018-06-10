require 'omniauth-oauth2'
require 'active_support/core_ext/string'

module OmniAuth
  module Strategies
    class Authic < OmniAuth::Strategies::OAuth2
      
      option :name, "authic"
      option :scope, "email"
      option :subdomain, "" # Comes in from config
      option :domain, "authic.com"
      option :ssl, true

      uid{ raw_info['id'] }

      info do
        {
          :email => raw_info['email'],
          :first_name => raw_info['first_name'],
          :last_name => raw_info['last_name'],
          :middle_name => raw_info['middle_name'],
          :full_name => raw_info['full_name'],
          :mobile => raw_info['mobile'],
          :phone => raw_info['phone'],
          :birth_date => raw_info['birth_date'],
          :gender => raw_info['gender'],
          :timezone => raw_info['timezone'],
          :country => raw_info['country'],
          :address => raw_info['address'],
          :groups => raw_info['groups'],
          :roles => raw_info['roles']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end
      
      def request_phase
        # Add authic_action into the params mix. This will let the Authic server know to serve up the signup or signin page
        options.authorize_params[:authic_action] = request.params["authic_action"]
        super
      end
      
      def client
        raise "You must specify your Authic subdomain in setup i.e. :subdomain => 'mysubdomain'" if options[:subdomain].blank?
        scheme = options[:ssl] ? "https" : "http"
        # Make sure we set the site correctly before creating a client
        options[:client_options][:site] = "#{scheme}://#{options[:subdomain]}.#{options[:domain]}"
        super
      end
      
      def raw_info
        @raw_info ||= access_token.get("/authic_user_info.json").parsed
      end

    end
  end
end