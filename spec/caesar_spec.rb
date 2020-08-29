require './caesar.rb'

describe '#caesar' do
  it 'correctly shifts positively' do
    expect(caesar('a', 2)).to eql('c')
  end

  it 'correctly shifts negatively' do
    expect(caesar('c', -2)).to eql('a')
  end

  it 'correctly loops from end to start' do
    expect(caesar('y', 3)).to eql('b')
  end

  it 'correctly loops from start to end' do
    expect(caesar('b', -3)).to eql('y')
  end

  it 'correctly preserves case' do
    expect(caesar('aAaA', 2)).to eql('cCcC')
  end

  it 'correctly handles large shifts' do
    expect(caesar('a', 132)).to eql('c')
  end
end
