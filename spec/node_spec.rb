require './spec/spec_helper'
require './lib/node'

RSpec.describe 'node' do
  it 'creates first node' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end

  it 'adds a new node to existing node' do
    node = Node.new("plop")
    node.add_new_node(Node.new("ploo"))

    expect(node.next_node.data).to eq("ploo")
  end
end
