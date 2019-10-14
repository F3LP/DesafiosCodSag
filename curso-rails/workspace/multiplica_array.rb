class Arrays

  def self.multiplica_antecessor_predecessor(array)
    aux = array[0]
    (0...array.length).each do |i|
      aux1 = array[i]

      if array.length == i + 1
          array[i] = aux * array[i]
      else
        array[i] = aux * array[i+1].to_i
      end
      if i != 0 
        aux = aux1
      end
      
    end
    array
  end
end

array = [0, 4, 1, 12, 7, 23, 2]
print Arrays.multiplica_antecessor_predecessor(array)

=begin

require 'spec_helper'

describe Arrays do
  it 'Atualiza cada elemento de um array com a multiplicação do anterior com o próximo.' do
    array = [1, 2, 3, 4, 5, 6]

    expect(Arrays.multiplica_antecessor_predecessor(array)).to eq [2, 3, 8, 15, 24, 30]
  end

  it 'Atualiza cada elemento de um array com a multiplicação do anterior com o próximo.' do
    array = [4, 1, 6, 7, 9, 3, 0]

    expect(Arrays.multiplica_antecessor_predecessor(array)).to eq [4, 24, 7, 54, 21, 0, 0]
  end

  it 'Atualiza cada elemento de um array com a multiplicação do anterior com o próximo.' do
    array = [0, 4, 1, 12, 7, 23, 2]

    expect(Arrays.multiplica_antecessor_predecessor(array)).to eq [0, 0, 48, 7, 276, 14, 46]
  end

  it 'Atualiza cada elemento de um array com a multiplicação do anterior com o próximo.' do
    array = [3, 7]

    expect(Arrays.multiplica_antecessor_predecessor(array)).to eq [21, 21]
  end
end



=end