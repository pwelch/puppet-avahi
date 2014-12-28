require 'spec_helper'

describe 'avahi', :type => :class do
  it 'compiles without error' do
    expect(subject).to compile
  end

  it 'includes stdlib class' do
    expect(subject).to contain_class('stdlib')
  end

  %w{
    avahi::install
    avahi::service
  }.each do |klass|
    it "includes #{klass} class" do
      expect(subject).to contain_class(klass)
    end
  end

  context 'including avahi::config' do
    it 'includes avahi::config' do
      expect(subject).to contain_class('avahi::config')
    end

    it 'requires avahi::install' do
      expect(subject).to contain_class('avahi::config').
        that_requires('Class[avahi::install]')
    end

    it 'notifies avahi::service' do
      expect(subject).to contain_class('avahi::config').
        that_notifies('Class[avahi::service]')
    end
  end
end
