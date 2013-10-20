require 'spec_helper'

describe Sqrl::Identity do

  describe 'creating an Identity' do

    it 'should initialize with an identity_name, master_identity_keys, password_verify, password_salt and a PasswordParameter object' do
      @identity = Sqrl::Identity.new(identity_name: 'identity_name',
                                     master_identity_keys: 'master_identity_keys',
                                     password_verify: 'password_verify',
                                     password_salt: 'password_salt',
                                     password_parameters: Sqrl::PasswordParameters.new(N: 1, r: 3, p: 2)
      )
      @identity.identity_name.should == 'identity_name'
    end

    it 'should throw an ArgumentError if not all the correct parameters are passed' do
      expect { Sqrl::Identity.new(identity_name: 'identity_name',
                                  master_identity_keys: 'master_identity_keys',
                                  password_verify: 'password_verify',
                                  password_salt: 'password_salt') }.to raise_error(ArgumentError)
    end

    it 'should NOT throw an ArgumentError if the identity name is not passed' do
      expect { Sqrl::Identity.new(master_identity_keys: 'master_identity_keys',
                                  password_verify: 'password_verify',
                                  password_salt: 'password_salt',
                                  password_parameters: Sqrl::PasswordParameters.new(N: 1, r: 3, p: 2)
      ) }.to_not raise_error(ArgumentError)
    end
  end

end