class PagamentoCredito < Pagamento

    attr_accessor :juros

    def initialize(juros:, quantidade:, produto:)
      super(quantidade: quantidade, produto: produto)
      @juros = juros
    end

    def atualizar_valor
      @valor +=  (@juros * @valor)/100
    end


end
