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

  describe '#append' do 
    it 'appends a node' do
      @list.append('West')
      expect(@list.head).to be_a Node
      expect(@list.head.surname).to eq('West')
      expect(@list.head.next_node).to eq(nil)
    end
  end

  describe '#count' do 
    it 'counts nodes' do 
      @list.append('West')
      expect(@list.head.next_node).to eq(nil)
      expect(@list.count).to eq(1)
    end

    it 'counts more than 1 node' do 
      @list.append('West') 
      @list.append('Donkey')
      expect(@list.count).to eq(2)
    end
  end
end