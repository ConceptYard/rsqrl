require 'spec_helper'

describe Sqrl::PasswordParameters do

  describe 'immutable objects are created' do
    it 'should instantiate an object with the appropriate parameters' do
      @password_parameters = Sqrl::PasswordParameters.new(N: 1, r: 3, p: 2)
      @password_parameters.N.should == 1
      @password_parameters.output_length.should == 32
    end

    it 'should raise an error with the bad parameters' do
      expect { Sqrl::PasswordParameters.new(N: 1, r: 3) }.to raise_error(ArgumentError)
    end
  end

  describe 'no setting methods' do

    before(:each) do
      @password_parameters = Sqrl::PasswordParameters.new(N: 1, r: 3, p: 2)
    end

    it 'should thrown an error when trying to set a value' do
      expect { @password_parameters.N = 2 }.to raise_error(NoMethodError)
      expect { @password_parameters.r = 2 }.to raise_error(NoMethodError)
      expect { @password_parameters.o = 2 }.to raise_error(NoMethodError)
      expect { @password_parameters.output_length = 64 }.to raise_error(NoMethodError)
    end

  end

  describe 'display method' do

    before(:each) do
      @password_parameters = Sqrl::PasswordParameters.new(N: 1, r: 3, p: 2)
    end

    it 'should display a string showing the parameters in N, r, p order' do
      @password_parameters.to_s.should == 'N: 1, r: 3, p: 2'
    end
  end
end