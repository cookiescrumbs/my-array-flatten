require 'my_flatten'

RSpec.describe '#my_flatten' do
  context 'when given an array of nested arrays' do
    it 'flattens the nested arrays into one array' do
      expect([1,[2]].my_flatten).to eql [1,2]
      expect([1,[2, [3]]].my_flatten).to eql [1, 2, 3]
      expect([1,[2,[3]],4].my_flatten).to eql [1, 2, 3, 4]
      expect([1,[2,[3],[6, [7,8,9]]],4].my_flatten).to eql  [1, 2, 3, 6, 7, 8, 9, 4]
    end
  end
end