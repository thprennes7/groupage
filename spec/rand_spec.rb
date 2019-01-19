require_relative "../lib/rand.rb"

describe 'throwing dice fonction' do
  it 'should return 1 or 2' do
    expect(dice_throw).to eq(1).or eq(2)
  end
end