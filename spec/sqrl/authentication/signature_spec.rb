require 'spec_helper'

describe Sqrl::Authentication::Signature do

  before(:each) do
    @signature = Sqrl::Authentication::Signature.new('www.conceptyard.com', 'KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz')
  end

  describe 'store the site_url and signature from an authentication using SQRL' do

    it 'should store the url and signature' do
      @signature.site_url.should == "www.conceptyard.com"
      @signature.signature.should == 'KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz'
      @signature.site_signature.should == 'www.conceptyard.com/sqrl?KJA7nLFDQWWmvt10yVjNDoQ81uTvNorPrr53PPRJesz'
    end
  end
end