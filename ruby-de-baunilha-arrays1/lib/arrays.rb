class Arrays
  def self.converte_impares_por(lista, numero)
    nova_lista = [[], []]
    (0..lista.length - 1).each do |i|
      if (lista[i].to_i % 2) != 0
        nova_lista[0].push(lista[i].to_i)
        nova_lista[1].push(lista[i].to_i * numero)
      end
    end
    nova_lista
  end

  def self.converte_pares_por(lista, numero)
    nova_lista = [[], []]
    (0..lista.length - 1).each do |i|
      if (lista[i].to_i % 2) == 0
        nova_lista[0].push(lista[i].to_i)
        nova_lista[1].push(lista[i].to_i * numero)
      end
    end
    nova_lista
  end
end
