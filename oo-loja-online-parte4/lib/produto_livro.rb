class ProdutoLivro < Produto

  attr_accessor :autor, :genero, :paginas

  def initialize(autor:, genero:, paginas:, nome:, preco:, estoque:)
    super(nome: nome, categoria: categoria, preco: preco, estoque: estoque)
    @autor = autor
    @genero = genero
    @paginas = paginas
  end

  def adiciona_estoque(qtd)
    @estoque += qtd
  end

  def remove_estoque(qtd)
    @estoque -= qtd
  end

end
