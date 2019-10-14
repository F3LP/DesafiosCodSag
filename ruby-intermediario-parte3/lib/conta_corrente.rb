require_relative "conta"
class ContaCorrente < Conta

def depositar(valor)
  @saldo += valor - 0.1
end

def atualizar
end

end
