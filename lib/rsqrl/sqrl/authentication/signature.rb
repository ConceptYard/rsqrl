module Sqrl
  module Authentication

    ##
    ## A signature and challenge to be verified for an authentication request.
    ##
    class Signature
      attr_reader :site_url, :signature

      def initialize(site_url, signature)
        @site_url, @signature = site_url, signature
      end

      def site_signature
        "#{site_url}/sqrl?#{signature}"
      end

      # check validity of signature
      def valid?
        true
      end

    end
  end
end
