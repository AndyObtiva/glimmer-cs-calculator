require 'spec_helper'

describe Glimmer::ScientificCalculator::Presenter do
  it 'adds' do
    subject.press('1')
    subject.press('+')
    subject.press('2')
    subject.press('=')
    expect(subject.result).to eq('3')
  end
end
