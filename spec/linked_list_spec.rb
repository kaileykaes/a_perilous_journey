require 'spec_helper'

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  describe '#initialize' do
    it 'exists and has attr' do
      expect(@list).to be_a LinkedList
      expect(@list.head).to eq(nil)
    end
  end
end