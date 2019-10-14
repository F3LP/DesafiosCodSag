class Arrays
  def self.multiplica_indices(array)

  (0..array.length - 1).each do |i|
    array[i] = (array[i] * i)
  end
  array
  end
end


array = [4, 1, 6, 7, 9, 3, 0]

print Arrays.multiplica_indices(array)



=begin
    array = [3, 7]
    expect(Arrays.multiplica_indices(array)).to eq [0, 7]

    array = [1, 2, 3, 4, 5, 6]
    expect(Arrays.multiplica_indices(array)).to eq [0, 2, 6, 12, 20, 30]

    array = [4, 1, 6, 7, 9, 3, 0]
    expect(Arrays.multiplica_indices(array)).to eq [0, 1, 12, 21, 36, 15, 0]

    array = [0, 4, 1, 12, 7, 23, 2]
    expect(Arrays.multiplica_indices(array)).to eq [0, 4, 2, 36, 28, 115, 12]
=end