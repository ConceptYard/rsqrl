require 'spec_helper'

describe Authentication::SQRLSignature do

  before(:each) do
    @sqrl_signature = Authentication::SQRLSignature.new('www.conceptyard.com', 'KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz')
  end

  describe 'store the site_url and signature from an authentication using SQRL' do

    it 'should store the url and signature' do
      @sqrl_signature.site_url.should == "www.conceptyard.com"
      @sqrl_signature.signature.should == 'KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz'
      @sqrl_signature.site_signature.should == 'www.conceptyard.com/sqrl?KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz'
    end
  end
end