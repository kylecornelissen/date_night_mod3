require './spec/spec_helper'
require './lib/node'
require './lib/binary_search_tree'

RSpec.describe 'binary search tree' do
  before :each do
    @tree = BinarySearchTree.new
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(92, "Sharknado 3")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  # it 'inserts movie nodes into list' do
  #   expect(@tree.count).to eq(4)
  #   expect(@tree.head.data).to eq([61, "Bill & Ted's Excellent Adventure"])
  # end

  it 'compares nodes'
    expect(@tree.node_comparison
  end

  it 'counts nodes in list' do
    expect(@tree.count).to eq(4)
  end

  it 'finds if score is included in list' do
    expect(@tree.include?(61)).to eq(true)
    expect(@tree.include?(16)).to eq(true)
    expect(@tree.include?(92)).to eq(true)
    expect(@tree.include?(50)).to eq(true)
    expect(@tree.include?(1)).to eq(false)
    expect(@tree.include?(2)).to eq(false)
    expect(@tree.include?(3)).to eq(false)
  end

  it 'finds highest score in list' do
    expect(@tree.max).to eq({"Sharknado 3"=>92})
  end

  it 'finds lowest score in list' do
    expect(@tree.min).to eq({"Johnny English"=>16})
  end

  it 'sorts the movies in list' do
    sorted_movies = [{"Johnny English"=>16},
                     {"Hannibal Buress: Animal Furnace"=>50},
                     {"Bill & Ted's Excellent Adventure"=>61},
                     {"Sharknado 3"=>92}]
    expect(@tree.sort).to eq(sorted_movies)
  end
end
