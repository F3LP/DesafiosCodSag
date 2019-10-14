class ArrayUtils

def troca(lista)

  (0..lista.length - 2) .each do |i|

    if i % 2 == 0
      aux = lista[i + 1]
      lista[i + 1] = lista[i]
      lista[i] = aux
    end
  end
 lista
end

end

puts lista = [3, 9, 4, 7]


teste = ArrayUtils.new
teste.troca(lista)

print ArrayUtils.new().troca(lista)




=begin
  def troca(lista)

    conf = false

    while conf == false
    
      conf = true
      (0..lista.length - 2) .each do |i|
    
        while lista[i] > lista[i + 1]
          aux = lista[i + 1]
          lista[i + 1] = lista[i]
          lista[i] = aux
          conf = false
        end
      end
    end
  end
=end
