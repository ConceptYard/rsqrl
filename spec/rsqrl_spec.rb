require 'spec_helper'

describe Rsqrl do

  context 'A user launches their rsqrl application, and lets it see the QR code' do

    describe 'launching the rsqrl application' do
      pending('Application is launched')
    end

    describe 'rsqrl application sees QR code' do
      pending('Results from seeing a QR code')
    end
  end

  context 'For verification, the rsqrl application displays the domain name contained in the SQRL code' do

    describe 'The application calculates the domain name from the QR code' do
      pending 'Return the results of calculating the domain name from the QR code'
    end

    describe 'Application displays the domain name' do
      pending 'The user verifies the domain name'
    end
  end

  context 'After verifying the domain, the user permits the rsqrl application to authenticate their identity' do

    describe 'The rsqrl application authenticates with the target' do
      pending 'communicate with target and authenticate user'
    end
  end

  context 'Leaving the login information blank, the user clicks the “Log in“ button and is logged in' do

    describe 'The user clicks the login button' do
      pending 'The login button is clicked'
    end

    describe 'The user is logged in' do
      pending 'User is authenticated without using id/password'
    end
  end
end