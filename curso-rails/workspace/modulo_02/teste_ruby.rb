
puts "Olá Curso de Rails"

puts "Digite o salário: "
salario = gets.chomp.to_i

puts "Salário:  #{salario}"

unless salario < 100 
    print "Vocẽ ganha bem"
end

puts salario.class


puts "Digite uma idade"
idade = gets.to_i
case idade

when 0..11
	puts "Criança"

when 12..17
	puts "Adolescente"

else
	puts "Adulto"
end

idade > 50 ? (puts "tiozão") : (puts "molecote")

(0..5) .each do |i|
   puts i 
end