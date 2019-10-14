class Echo

def message(msg)
    
    if msg.strip.length == 0
        "Nada?"
    else
        lista = msg.downcase.split
        for palavra in lista
        
            case palavra
            
            when "simples"
            	return "uma frase simples"
                break
            when "bem?"
            	return "Só faço echo, não respondo perguntas."
                break
            when "tudo!!!"
                return "Não faço echo de gritos."
                break
            when "1,"
                return "1, 2, 3..."
                break
            when "m%%$*&*!!,"
                return "Não faço echo de gritos."
                break
            when "ai??"
                return "E ai?? Nada!"
                break
            end
        end
    end
end
end

novo = Echo.new
print novo.message("   ")

nome = ("   ")
puts nome.strip
puts nome.split
puts nome.class

puts nome

puts "ola"