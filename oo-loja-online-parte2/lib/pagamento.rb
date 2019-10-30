class Pagamento

  attr_accessor :quantidade, :produto, :preco, :valor

  def initialize(quantidade:,  preco:, produto: "Sem nome")
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = @quantidade * @preco
  end

  def aplicar_desconto(desconto)
    @valor -= desconto
  end
end
