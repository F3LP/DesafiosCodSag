class Conta

  attr_accessor :numero, :titular, :saldo, :limite

  def initialize(numero, titular, saldo, limite)
    @numero = numero
    @titular= titular
    @saldo = saldo
    @limite = limite
  end

  def no_limite?()
    if @saldo < 0 && @limite > 0
      return true
    end
  end

  def sacar(valor)
    if @saldo + @limite > valor
      @saldo -= valor
      true
    else
      return false
    end
  end

  def depositar(valor)
    @saldo += valor
  end

  def transfere(conta_destino, valor_transferencia)
    if sacar(valor_transferencia) == true
     conta_destino.depositar(valor_transferencia)
    else
     false
    end
  end
  
  def ==(conta2)
    if self.numero == conta2.numero
      if self.titular == conta2.titular
        if self.saldo == conta2.saldo
          if self.limite == conta2.limite
            return true
          end
        end
      end
    end
  end
end

puts conta1 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
puts conta2 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
puts conta1 == conta2



=begin


  it "duas contas com mesmos dados deveriam ser iguais" do
    conta1 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)
    conta2 = Conta.new('2303-2', 'José da Silva', 1000.10, 500)

    expect(conta1).to eq conta2
=end