module Authentication
  class SQRLSignature
    attr_reader :site_url, :signature

    def initialize(site_url, signature)
      @site_url, @signature = site_url, signature
    end

    def site_signature
      "#{site_url}/sqrl?#{signature}"
    end

  end
end
