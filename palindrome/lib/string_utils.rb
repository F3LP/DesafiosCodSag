class StringUtils
  def palindromo?(frase)

    lista_frase = frase.downcase.strip.scan(/\w/)
    lista_intertida = []
    cont = lista_frase.length - 1
    palindromo = true

  while cont >= 0
    lista_intertida.push(lista_frase[cont])
    cont -= 1
  end

    (0..lista_frase.length).each do |i|
      if lista_frase[i] != lista_intertida[i]
        palindromo = false
        break
      end
    end
    palindromo
  end
end
