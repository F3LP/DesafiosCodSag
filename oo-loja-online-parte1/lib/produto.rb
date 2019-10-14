class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  #construtor
  def initialize(nome: "Teclado", categoria: "Geral", preco: 100, estoque: 3)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
