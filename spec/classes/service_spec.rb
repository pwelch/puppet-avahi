require 'spec_helper'

describe 'avahi::service', :type => :class do
  let(:params) {
    {
      :avahi_service_ensure => 'running',
      :avahi_service_enable => true,
    }
  }

  it 'compiles without error' do
    expect(subject).to compile
  end

  it 'manages the avahi-daemon service' do
    expect(subject).to contain_service('avahi-daemon').with({
      :ensure => params[:avahi_service_ensure],
      :enable => params[:avahi_service_enable],
    })
  end
end
