require 'rails_helper'

describe Str::TestStr do
  subject(:sum_str) { described_class.call('str1', 'str2') }
  describe '.call' do

    let(:result_str) { 'Str1str2' }

    it { expect(sum_str).to eq(result_str) }
  end
end
