class ArrayUtils
  def self.compara(lista1, lista2)
    if lista1.length != lista2.length
      return false
    else
      l1 = lista1.length
      l2 = lista2.length
      
      (0..lista1.length - 1).each do |i|
        if l1[i] != l2[i]
          return false
          break
        else
          return true
        end
      end
    end
  end
  
  def self.divisiveis(num1, num2)
    lista  = [[],[],[]]
    (1..50).each do |i|
        if i % num1 == 0 && i % num2 == 0
        lista[0].push(i)
      else
        if i % num1 == 0
          lista[1].push(i)
        end
        if i % num2 == 0
          lista[2].push(i)
        end
      end
    end
  lista
  end
  
  def self.soma(lista)
    soma = 0
    (0..lista.length - 1).each do |i|
      soma += lista[i]
    end
    soma
  end
  
  def self.combinar(num, letras)
    lista = []
    (0...num.length).each do |i|
        (0...letras.length).each do |x|
          new_list = [num[i], letras[x]]
          lista.push(new_list)
        end
    end
    lista
  end
end
 
numeros = [1, 2, 3, 4, 5]
letras = ["a", "b", "c", "d", "e"]
print ArrayUtils.combinar(numeros, letras)
 
#lista1 = [1, 3]
#lista2 = [3, 1]
#puts ArrayUtils.compara(lista1, lista2)

#print ArrayUtils.divisiveis(4, 6)

#lista = [4, 8, 16, 20, 28, 32, 40, 44]
#print ArrayUtils.soma(lista)

=begin

require 'spec_helper'

describe ArrayUtils  do
  describe '.compara' do
    it 'comparar duas lista por valores' do
      expect(ArrayUtils.compara([1,3],[3,1])).to eq true
      expect(ArrayUtils.compara([1,3,1],[3,1,1])).to eq true
      expect(ArrayUtils.compara([1,3,1],[3,1])).to eq false
      expect(ArrayUtils.compara([3,1],[3,1])).to eq true
      expect(ArrayUtils.compara([3,1,4,5,7,9],[1,3,4,5,9,7])).to eq true
    end
  end

  describe '.divisiveis' do
    it 'listar números entre 0 e 50 divisiveis por 3 e por 5, somente por 3 e somente por 5' do
      pending
      expect(ArrayUtils.divisiveis(3,5)).to eq [
        [15, 30, 45],
        [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48],
        [5, 10, 20, 25, 35, 40, 50]
      ]
    end
    it 'listar números entre 0 e 50 divisiveis por 4 e por 6, somente por 4 e somente por 6' do
      pending
      expect(ArrayUtils.divisiveis(4,6)).to eq [
        [12, 24, 36, 48],
        [4, 8, 16, 20, 28, 32, 40, 44],
        [6, 18, 30, 42]
      ]
    end
  end

  describe '.soma' do
    it 'deve somar todos os elementos do array' do
      pending
      list = [4, 8, 16, 20, 28, 32, 40, 44]
      expect(ArrayUtils.soma(list)).to eq 192

      list2 = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48]
      expect(ArrayUtils.soma(list2)).to eq 318
    end
  end

  describe '.combinar' do
    it 'combinar dezenas e unidades' do
      pending
      numeros = [1, 2, 3, 4, 5]
      letras = ["a", "b", "c", "d", "e"]
      expect(ArrayUtils.combinar(numeros, letras)).to eq [
        [1, "a"], [1, "b"], [1, "c"], [1, "d"], [1, "e"], [2, "a"], [2, "b"],
        [2, "c"], [2, "d"], [2, "e"], [3, "a"], [3, "b"], [3, "c"], [3, "d"],
        [3, "e"], [4, "a"], [4, "b"], [4, "c"], [4, "d"], [4, "e"], [5, "a"],
        [5, "b"], [5, "c"], [5, "d"], [5, "e"]
      ]

      dezenas = ["vinte", "trinta", "quarenta"]
      unidades = ["", "um", "dois", "tres", "quatro", "quinta", "sexta", "sete", "oito", "nove"]
      expect(ArrayUtils.combinar(dezenas, unidades)).to eq [
        ["vinte", ""],
        ["vinte", "um"],
        ["vinte", "dois"],
        ["vinte", "tres"],
        ["vinte", "quatro"],
        ["vinte", "quinta"],
        ["vinte", "sexta"],
        ["vinte", "sete"],
        ["vinte", "oito"],
        ["vinte", "nove"],
        ["trinta", ""],
        ["trinta", "um"],
        ["trinta", "dois"],
        ["trinta", "tres"],
        ["trinta", "quatro"],
        ["trinta", "quinta"],
        ["trinta", "sexta"],
        ["trinta", "sete"],
        ["trinta", "oito"],
        ["trinta", "nove"],
        ["quarenta", ""],
        ["quarenta", "um"],
        ["quarenta", "dois"],
        ["quarenta", "tres"],
        ["quarenta", "quatro"],
        ["quarenta", "quinta"],
        ["quarenta", "sexta"],
        ["quarenta", "sete"],
        ["quarenta", "oito"],
        ["quarenta", "nove"]]
    end
  end
end

=end