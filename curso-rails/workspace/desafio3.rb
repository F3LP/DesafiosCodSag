class Word
  def anagrama?(uma_palavra, outra_palavra)
    
    anagrama=false

    if uma_palavra.strip.length == outra_palavra.strip.length
      
      f1 = uma_palavra.downcase.scan(/\w/).sort
      f2 = outra_palavra.downcase.scan(/\w/).sort
      
      puts uma_palavra
    
      print f1
      puts " "
      print f2
      
      anagrama=true
      
      (0..f1.length).each do |i|
        if f1[i] != f2[i]
          anagrama=false
        end
      end
    end
    anagrama
  end
end


palavra = Word.new
puts palavra.anagrama?("ce do", "doce")



=begin
expect(Word.new().anagrama?('code', 'doce')).to eq true
expect(Word.new().anagrama?('one', 'neo')).to eq true
expect(Word.new().anagrama?('atod', 'rota')).to eq false
expect(Word.new().anagrama?('arquiteto', 'itearuqota')).to eq false
expect(Word.new().anagrama?('oraculo', 'loucaros')).to eq false
expect(Word.new().anagrama?('Matrix', 'xmarit')).to eq true
=end
