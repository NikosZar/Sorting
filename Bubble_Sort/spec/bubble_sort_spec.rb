require_relative '../bubble_sort'

describe 'bubble_sort' do
  it 'sorts an array in ascending order' do
    expect(bubble_sort([4,3,78,2,0,1])). to eq([0,1,2,3,4,78])
  end

  it 'handles empty arrays' do
    expect(bubble_sort([])).to eq([])
  end

  it 'handles an array with one element' do
    expect(bubble_sort([10])).to eq([10])
  end

  it 'sorts in ascending order if last element is lowest' do
    expect(bubble_sort([4,3,78,2,1,0])).to eq([0,1,2,3,4,78])
  end

  it 'handles ties if two elements are the same' do
    expect(bubble_sort([4,3,78,2,2,0])).to eq([0,2,2,3,4,78])
  end

  it 'handles floats' do
    expect(bubble_sort([1.0, 1.2, 0.9])).to eq([0.9, 1.0, 1.2])
  end
end