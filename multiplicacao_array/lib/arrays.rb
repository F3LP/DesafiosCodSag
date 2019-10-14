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
