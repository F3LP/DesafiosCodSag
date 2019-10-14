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

teste = StringUtils.new

puts teste.palindromo?("Luz azaul")




=begin
require 'spec_helper'

describe StringUtils do
  before do
    allow_any_instance_of(String).to receive(:reverse).and_raise("Uso do reverse foi bloqueado.")
  end

  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do

    expect(StringUtils.new().palindromo?('anilina')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do

    expect(StringUtils.new().palindromo?('arara')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: falso." do

    expect(StringUtils.new().palindromo?('palindromo')).to eq false
  end
  
  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do
    
    expect(StringUtils.new().palindromo?('Roma me tem amor')).to eq true
  end
  
  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do
    
    expect(StringUtils.new().palindromo?('O lobo ama o bolo')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: falso." do

    expect(StringUtils.new().palindromo?('Luz azaul')).to eq false
  end
end

=end