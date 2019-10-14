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
