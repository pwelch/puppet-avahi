require 'spec_helper'

describe 'avahi::params', :type => :class do
  it 'compiles without error' do
    expect(subject).to compile
  end
end
