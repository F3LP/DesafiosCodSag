class Telefone
  
  def self.limpa_string(sequencia)
      lista_dig  = []
   
    (0...sequencia.length).each do |i|
      temp = ""
      aux = nil
      if i == 0
        aux = 0
      else
        aux = sequencia[(i-1)]
      end
      
      if sequencia[i] != sequencia[(i+1)] && sequencia[i] != aux && sequencia[i] != " "
        lista_dig.push(sequencia[i])
      elsif sequencia[i] == sequencia[(i+1)] && sequencia[i] != aux && sequencia[i] != " "
        (i..i+3).each do |x|
          if sequencia[x] == sequencia[(i+1)]
            temp += sequencia[x]
          end
        end
        lista_dig.push(temp)
      end
    end
    lista_dig
  end
  
  def teclar(sequencia)
    lista = Telefone.limpa_string(sequencia)
    msg = []
    
    (0...lista.length).each do |i|
      
      case lista[i][0].to_i
      when 2
        if lista[i].length == 1
          msg << "a"
          elsif lista[i].length == 2
           msg << "b"
        else
          msg << "c"
        end
      when 3
        if lista[i].length == 1
          msg << "d"
          elsif lista[i].length == 2
            msg << "e"
        else
          msg << "f"
        end
      when 4
        if lista[i].length == 1
          msg << "g"
          elsif lista[i].length == 2
            msg << "h"
        else
          msg << "i"
        end
      when 5
        if lista[i].length == 1
          msg << "j"
          elsif lista[i].length == 2
            msg << "k"
        else
          msg << "l"
        end
      when 6
        if lista[i].length == 1
          msg << "m"
          elsif lista[i].length == 2
            msg << "n"
        else
          msg << "o"
        end
      when 7
        if lista[i].length == 1
          msg << "p"
          elsif lista[i].length == 2
            msg << "q"
            elsif lista[i].length == 3
              msg << "r"
        else
          msg << "s"
        end
      when 8
        if lista[i].length == 1
          msg << "t"
          elsif lista[i].length == 2
            msg << "u"
        else
          msg << "v"
        end
      when 9
        if lista[i].length == 1
          msg << "w"
          elsif lista[i].length == 2
            msg << "x"
            elsif lista[i].length == 3
            msg << "y"
        else
          msg << "z"
        end
      when 0
        msg << " "
      end
    end
    msg.join
  end
end

sequencia = '2226663 3307777242'
print t1 = Telefone.new.teclar(sequencia)



=begin
require 'spec_helper'

describe Telefone do
  it 'Decodifica sequência de teclas pressionadas e escreve: et.' do
    expect(Telefone.new().teclar('338')).to eq 'et'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: ruby on rails.' do
    expect(Telefone.new().teclar('77788229990666 66077724445557777')).to eq 'ruby on rails'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: code saga.' do
    expect(Telefone.new().teclar('2226663 3307777242')).to eq 'code saga'
  end
end


=end