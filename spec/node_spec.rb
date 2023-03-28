require 'spec_helper'

RSpec.describe '' do
  before(:each) do
    @node = Node.new('Burke')
  end

  describe '#initialize' do
    it 'exists' do
      expect(@node).to be_a Node
    end

    it 'has attributes' do 
      expect(@node.surname).to eq('Burke')
      expect(@node.next_node).to eq(nil)
    end
  end
end