require 'spec_helper'

describe 'avahi::config', :type => :class do
  let(:node)   { 'rspec.example.com' }
  let(:params) {
    {
      :avahi_conf_template => 'avahi/avahi-daemon.conf.erb',
      :avahi_conf_file     => '/etc/avahi/avahi-daemon.conf',
    }
  }

  it 'compiles without error' do
    expect(subject).to compile
  end

  it 'manages the avahi-daemon config file' do
    expect(subject).to contain_file(params[:avahi_conf_file]).
      with({:ensure  => 'file'})
  end

  it 'renders the template file for avahi-daemon config' do
    expect(subject).to contain_file(params[:avahi_conf_file]).
      with_content(/\n\[server\]\nhost-name=rspec\ndomain-name=local\n/)
  end
end
