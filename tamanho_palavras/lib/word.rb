class Word
  def longest(phrase)
   list_phrase = phrase.split
   maior = ""
   x = 0

   while x < list_phrase.length

    if list_phrase[x].length > maior.length
        maior = list_phrase[x]
    end
    x = x + 1

   end
   maior
  end

  def shortest(phrase)
    list_phrase = phrase.split
    menor = list_phrase[0]
    x = 0

    while x < list_phrase.length

     if list_phrase[x].length < menor.length
         menor = list_phrase[x]
     end
     x = x + 1
    end
    menor
  end
end
