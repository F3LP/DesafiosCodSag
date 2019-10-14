require_relative 'ruby-intermediario-parte2'
class Conta
  attr_accessor :titular, :limite, :saldo, :numero
  
  def initialize(numero, titular, saldo, limite)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @limite = limite
  end

  def sacar(valor)
    return false if valor > (@saldo + @limite)

    @saldo -= valor
    true
  end

  def depositar(valor)
    @saldo += valor
  end

  def no_limite?
    @saldo < 0
  end

  def ==(conta)
    conta.titular == titular &&
      conta.limite == limite &&
      conta.saldo == saldo &&
      conta.numero == numero
  end

  def transfere(conta_destino, valor_transferencia)
    return false unless sacar(valor_transferencia)

    conta_destino.depositar(valor_transferencia)
  end
end


c2 = Conta.new(123, ti = Cliente.new("Jose", "da Silva", 123, "sr"), 500.0, 100.0)
puts c2.class
puts c2.titular.class



=begin
  it "titular deveria ser um Cliente" do
    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)

    expect(conta.titular).to be_a(Cliente)
  end

  it "deveria conseguir criar um objeto do tipo Conta" do
    numero = "2303-2"
    titular = "José da Silva"
    saldo = 1000.10
    limite = 500
    conta = Conta.new(numero, titular, saldo, limite)

    expect(conta.numero).to eq numero
    expect(conta.titular.nome).to eq titular
    expect(conta.limite).to eq limite
    expect(conta.saldo).to eq saldo
  end



=end