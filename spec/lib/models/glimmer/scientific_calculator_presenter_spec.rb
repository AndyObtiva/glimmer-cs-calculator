require 'spec_helper'

describe Glimmer::ScientificCalculator::Presenter do
  context 'addition' do
    after do
      subject.press('AC')
    end
  
    it 'adds 2 single-digit numbers' do
      expect(subject.result).to eq('0')
      subject.press('1')
      expect(subject.result).to eq('1')
      subject.press('+')
      expect(subject.result).to eq('1')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('=')
      expect(subject.result).to eq('3')
      subject.press('=')
      expect(subject.result).to eq('5')
    end

    it 'adds 2 double-digit numbers' do
      expect(subject.result).to eq('0')
      subject.press('1')
      expect(subject.result).to eq('1')
      subject.press('2')
      expect(subject.result).to eq('12')
      subject.press('+')
      expect(subject.result).to eq('12')
      subject.press('2')
      expect(subject.result).to eq('2')
      subject.press('0')
      expect(subject.result).to eq('20')
      subject.press('=')
      expect(subject.result).to eq('32')
    end
  end
end