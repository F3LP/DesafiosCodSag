class Word
  def anagrama?(uma_palavra, outra_palavra)

    anagrama=false

    if uma_palavra.strip.length == outra_palavra.strip.length

      f1 = uma_palavra.downcase.scan(/\w/).sort
      f2 = outra_palavra.downcase.scan(/\w/).sort

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
