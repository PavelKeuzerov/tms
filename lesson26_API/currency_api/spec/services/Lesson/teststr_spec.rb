# frozen_string_literal: true

require 'rails_helper'

describe Lesson::Teststr do
  describe '.call' do
    context 'two args is string' do
      it 'return string' do
        expect(described_class.call('first', 'second')).to eq('First second')
      end
    end

    context 'if first argument is nil' do
      it 'return string' do
        expect(described_class.call(nil, 'second')).to eq(' second')
      end
    end

    context 'if second argument is nil' do
      it 'return string' do
        expect(described_class.call('First', nil)).to eq('First ')
      end
    end
  end
end
