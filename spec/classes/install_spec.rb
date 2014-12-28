require 'spec_helper'

describe 'avahi::install', :type => :class do
  let(:facts) do
    {
      :osfamily               => 'Debian',
      :operatingsystem        => 'Ubuntu',
      :operatingsystemrelease => '14.04',
    }
  end

  it 'compiles without error' do
    expect(subject).to compile
  end

  it 'installs the avahi-daemon package' do
    expect(subject).to contain_package('avahi-daemon').
      with({:ensure => 'installed'})
  end
end
