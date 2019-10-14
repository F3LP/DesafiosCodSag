require_relative "conta"
class ContaPoupanca < Conta

def atualizar(juros)
  @saldo *= (1 + juros)
end

end
