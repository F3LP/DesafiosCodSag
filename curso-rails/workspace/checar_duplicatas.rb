class ArrayUtils
  def checar_duplicatas(array)

    duplicados = []
    existe = nil

  (0..array.length).each do |i|
    (0..array.length).each do |x|
      
      if array[i] == array[x] && i != x
   
        if duplicados.length == 0
          duplicados.push(array[i])
          existe = true
        else
          (0..duplicados.length).each do |x|

          if duplicados[x] == array[i]
            existe = true
            break
          else
            existe = false
          end
        end
        end

        if existe == false
          duplicados.push(array[i])
        end
        end
      end
    end
    duplicados
  end  
end


lista = [5, 13, 13,13, 64, 64, 64, 64, 6, 6, 6, 9]

dupli = ArrayUtils.new
print dupli.checar_duplicatas(lista)

      