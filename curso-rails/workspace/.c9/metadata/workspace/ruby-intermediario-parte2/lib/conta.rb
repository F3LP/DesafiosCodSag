{"changed":true,"filter":false,"title":"conta.rb","tooltip":"/ruby-intermediario-parte2/lib/conta.rb","value":"require_relative 'cliente'\nclass Conta\n  attr_accessor :limite, :titular , :saldo, :numero\n\n  def initialize(numero, titular, saldo, limite)\n    @numero = numero\n    @titular = Cliente.new(titular)\n    @saldo = saldo\n    @limite = limite\n  end\n\n  def sacar(valor)\n    return false if valor > (@saldo + @limite)\n\n    @saldo -= valor\n    true\n  end\n\n  def depositar(valor)\n    @saldo += valor\n  end\n\n  def no_limite?\n    @saldo < 0\n  end\n\n  def ==(conta)\n    conta.titular == titular &&\n      conta.limite == limite &&\n      conta.saldo == saldo &&\n      conta.numero == numero\n  end\n\n  def transfere(conta_destino, valor_transferencia)\n    return false unless sacar(valor_transferencia)\n\n    conta_destino.depositar(valor_transferencia)\n  end\nend\n\n\nconta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)\nputs conta.titular.class\nputs conta.class","undoManager":{"mark":96,"position":100,"stack":[[{"start":{"row":44,"column":0},"end":{"row":44,"column":58},"action":"insert","lines":["conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)"],"id":30}],[{"start":{"row":40,"column":0},"end":{"row":43,"column":0},"action":"remove","lines":["c2 = Conta.new(123, ti = Cliente.new(\"Jose\", \"da Silva\", 123, \"sr\"), 500.0, 100.0)","puts c2.class","puts c2.titular.class",""],"id":31}],[{"start":{"row":42,"column":0},"end":{"row":42,"column":1},"action":"insert","lines":["c"],"id":32},{"start":{"row":42,"column":1},"end":{"row":42,"column":2},"action":"insert","lines":["o"]},{"start":{"row":42,"column":2},"end":{"row":42,"column":3},"action":"insert","lines":["n"]},{"start":{"row":42,"column":3},"end":{"row":42,"column":4},"action":"insert","lines":["t"]},{"start":{"row":42,"column":4},"end":{"row":42,"column":5},"action":"insert","lines":["a"]},{"start":{"row":42,"column":5},"end":{"row":42,"column":6},"action":"insert","lines":[";"]}],[{"start":{"row":42,"column":5},"end":{"row":42,"column":6},"action":"remove","lines":[";"],"id":33}],[{"start":{"row":42,"column":5},"end":{"row":42,"column":6},"action":"insert","lines":["."],"id":34},{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["t"]},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["i"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["t"]}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":9},"action":"remove","lines":["tit"],"id":35},{"start":{"row":42,"column":6},"end":{"row":42,"column":13},"action":"insert","lines":["titular"]}],[{"start":{"row":42,"column":13},"end":{"row":42,"column":14},"action":"insert","lines":["."],"id":36},{"start":{"row":42,"column":14},"end":{"row":42,"column":15},"action":"insert","lines":["c"]},{"start":{"row":42,"column":15},"end":{"row":42,"column":16},"action":"insert","lines":["l"]},{"start":{"row":42,"column":16},"end":{"row":42,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":42,"column":14},"end":{"row":42,"column":17},"action":"remove","lines":["cla"],"id":37},{"start":{"row":42,"column":14},"end":{"row":42,"column":19},"action":"insert","lines":["class"]}],[{"start":{"row":42,"column":0},"end":{"row":42,"column":1},"action":"insert","lines":[" "],"id":38}],[{"start":{"row":42,"column":0},"end":{"row":42,"column":1},"action":"insert","lines":["p"],"id":39},{"start":{"row":42,"column":1},"end":{"row":42,"column":2},"action":"insert","lines":["u"]},{"start":{"row":42,"column":2},"end":{"row":42,"column":3},"action":"insert","lines":["t"]},{"start":{"row":42,"column":3},"end":{"row":42,"column":4},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":23},"end":{"row":6,"column":45},"action":"remove","lines":["= Cliente.new(titular)"],"id":40},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"remove","lines":[" "]}],[{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"insert","lines":[" "],"id":41},{"start":{"row":4,"column":33},"end":{"row":4,"column":34},"action":"insert","lines":["="]}],[{"start":{"row":4,"column":34},"end":{"row":4,"column":35},"action":"insert","lines":[" "],"id":42}],[{"start":{"row":4,"column":35},"end":{"row":4,"column":36},"action":"insert","lines":["C"],"id":43},{"start":{"row":4,"column":36},"end":{"row":4,"column":37},"action":"insert","lines":["l"]},{"start":{"row":4,"column":37},"end":{"row":4,"column":38},"action":"insert","lines":["i"]},{"start":{"row":4,"column":38},"end":{"row":4,"column":39},"action":"insert","lines":["e"]},{"start":{"row":4,"column":39},"end":{"row":4,"column":40},"action":"insert","lines":["n"]},{"start":{"row":4,"column":40},"end":{"row":4,"column":41},"action":"insert","lines":["t"]},{"start":{"row":4,"column":41},"end":{"row":4,"column":42},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":42},"end":{"row":4,"column":43},"action":"insert","lines":["."],"id":44},{"start":{"row":4,"column":43},"end":{"row":4,"column":44},"action":"insert","lines":["n"]},{"start":{"row":4,"column":44},"end":{"row":4,"column":45},"action":"insert","lines":["e"]},{"start":{"row":4,"column":45},"end":{"row":4,"column":46},"action":"insert","lines":["w"]}],[{"start":{"row":4,"column":47},"end":{"row":4,"column":48},"action":"insert","lines":["("],"id":45},{"start":{"row":4,"column":48},"end":{"row":4,"column":49},"action":"insert","lines":[")"]}],[{"start":{"row":4,"column":46},"end":{"row":4,"column":47},"action":"remove","lines":[","],"id":46}],[{"start":{"row":4,"column":48},"end":{"row":4,"column":49},"action":"insert","lines":[","],"id":47}],[{"start":{"row":4,"column":33},"end":{"row":4,"column":48},"action":"remove","lines":["= Cliente.new()"],"id":48},{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"remove","lines":[" "]},{"start":{"row":4,"column":31},"end":{"row":4,"column":32},"action":"remove","lines":["r"]},{"start":{"row":4,"column":30},"end":{"row":4,"column":31},"action":"remove","lines":["a"]},{"start":{"row":4,"column":29},"end":{"row":4,"column":30},"action":"remove","lines":["l"]}],[{"start":{"row":4,"column":29},"end":{"row":4,"column":30},"action":"insert","lines":["l"],"id":49},{"start":{"row":4,"column":30},"end":{"row":4,"column":31},"action":"insert","lines":["a"]},{"start":{"row":4,"column":31},"end":{"row":4,"column":32},"action":"insert","lines":["r"]}],[{"start":{"row":2,"column":50},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":50},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["a"]},{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"insert","lines":["t"]}],[{"start":{"row":3,"column":4},"end":{"row":3,"column":5},"action":"insert","lines":["t"],"id":51}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":5},"action":"remove","lines":["att"],"id":52},{"start":{"row":3,"column":2},"end":{"row":3,"column":15},"action":"insert","lines":["attr_accessor"]}],[{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":[" "],"id":53},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"insert","lines":["t"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"insert","lines":["i"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["t"]}],[{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"insert","lines":["u"],"id":54},{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"insert","lines":[":"]}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"insert","lines":[" "],"id":55},{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"insert","lines":["C"]},{"start":{"row":3,"column":23},"end":{"row":3,"column":24},"action":"insert","lines":["l"]},{"start":{"row":3,"column":24},"end":{"row":3,"column":25},"action":"insert","lines":["i"]},{"start":{"row":3,"column":25},"end":{"row":3,"column":26},"action":"insert","lines":["e"]},{"start":{"row":3,"column":26},"end":{"row":3,"column":27},"action":"insert","lines":["n"]},{"start":{"row":3,"column":27},"end":{"row":3,"column":28},"action":"insert","lines":["t"]},{"start":{"row":3,"column":28},"end":{"row":3,"column":29},"action":"insert","lines":["e"]}],[{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"remove","lines":[":"],"id":56}],[{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"insert","lines":[":"],"id":57}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"remove","lines":[" "],"id":58}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"insert","lines":["="],"id":59}],[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"insert","lines":[" "],"id":60}],[{"start":{"row":3,"column":23},"end":{"row":3,"column":24},"action":"insert","lines":[" "],"id":61}],[{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"insert","lines":["."],"id":62},{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"insert","lines":["n"]},{"start":{"row":3,"column":33},"end":{"row":3,"column":34},"action":"insert","lines":["e"]},{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"insert","lines":["w"]}],[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"remove","lines":["="],"id":63}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":34},"action":"remove","lines":["  attr_accessor :titu  Cliente.new"],"id":64},{"start":{"row":2,"column":50},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"remove","lines":["r"],"id":65},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"remove","lines":["a"]},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"remove","lines":["l"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"remove","lines":["u"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"remove","lines":["t"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"remove","lines":["i"]},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["t"]}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["C"],"id":66},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["l"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["i"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":19},"action":"remove","lines":["Clie"],"id":67},{"start":{"row":6,"column":15},"end":{"row":8,"column":4},"action":"insert","lines":["Cliente","    ","    "]}],[{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"remove","lines":["  "],"id":68},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]},{"start":{"row":7,"column":4},"end":{"row":8,"column":0},"action":"remove","lines":["",""]},{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"remove","lines":["  "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  "]},{"start":{"row":6,"column":22},"end":{"row":7,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["."],"id":69},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["n"]},{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["e"]},{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["w"]}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":26},"action":"remove","lines":["Cliente.new"],"id":70},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["t"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["i"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["t"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["u"]},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["l"]},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["a"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["r"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"remove","lines":["e"],"id":71}],[{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"remove","lines":["r"],"id":72},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"remove","lines":["a"]},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"remove","lines":["l"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"remove","lines":["u"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"remove","lines":["t"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"remove","lines":["i"]},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"remove","lines":["t"]}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["C"],"id":73},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["l"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["i"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["e"]},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["t"]}],[{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"remove","lines":["t"],"id":74}],[{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["n"],"id":75},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["t"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["e"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["."]},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["n"]},{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["e"]},{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["w"]}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":28},"action":"insert","lines":["()"],"id":76}],[{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":["t"],"id":77},{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["i"]}],[{"start":{"row":6,"column":27},"end":{"row":6,"column":29},"action":"remove","lines":["ti"],"id":78},{"start":{"row":6,"column":27},"end":{"row":6,"column":34},"action":"insert","lines":["titular"]}],[{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"insert","lines":[","],"id":79}],[{"start":{"row":6,"column":35},"end":{"row":6,"column":36},"action":"insert","lines":[" "],"id":80}],[{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"remove","lines":[","],"id":81}],[{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"remove","lines":[" "],"id":82}],[{"start":{"row":40,"column":0},"end":{"row":43,"column":0},"action":"remove","lines":["","conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)","puts conta.titular.class",""],"id":83}],[{"start":{"row":40,"column":0},"end":{"row":43,"column":0},"action":"insert","lines":["","conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)","puts conta.titular.class",""],"id":84}],[{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"insert","lines":[","],"id":85}],[{"start":{"row":6,"column":35},"end":{"row":6,"column":36},"action":"insert","lines":[" "],"id":86}],[{"start":{"row":6,"column":36},"end":{"row":6,"column":38},"action":"insert","lines":["\"\""],"id":87}],[{"start":{"row":6,"column":38},"end":{"row":6,"column":39},"action":"insert","lines":[","],"id":88}],[{"start":{"row":6,"column":39},"end":{"row":6,"column":40},"action":"insert","lines":[" "],"id":89}],[{"start":{"row":6,"column":40},"end":{"row":6,"column":42},"action":"insert","lines":["\"\""],"id":90}],[{"start":{"row":40,"column":0},"end":{"row":43,"column":0},"action":"remove","lines":["","conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)","puts conta.titular.class",""],"id":91}],[{"start":{"row":0,"column":0},"end":{"row":39,"column":0},"action":"remove","lines":["require_relative 'cliente'","class Conta","  attr_accessor :titular, :limite, :saldo, :numero","","  def initialize(numero, titular, saldo, limite)","    @numero = numero","    @titular = Cliente.new(titular, \"\", \"\")","    @saldo = saldo","    @limite = limite","  end","","  def sacar(valor)","    return false if valor > (@saldo + @limite)","","    @saldo -= valor","    true","  end","","  def depositar(valor)","    @saldo += valor","  end","","  def no_limite?","    @saldo < 0","  end","","  def ==(conta)","    conta.titular == titular &&","      conta.limite == limite &&","      conta.saldo == saldo &&","      conta.numero == numero","  end","","  def transfere(conta_destino, valor_transferencia)","    return false unless sacar(valor_transferencia)","","    conta_destino.depositar(valor_transferencia)","  end","end",""],"id":92},{"start":{"row":0,"column":0},"end":{"row":38,"column":3},"action":"insert","lines":["require_relative 'cliente'","class Conta","  attr_accessor :limite, :titular , :saldo, :numero","","  def initialize(numero, titular = Cliente, saldo, limite)","    @numero = numero","    @titular = titular","    @saldo = saldo","    @limite = limite","  end","","  def sacar(valor)","    return false if valor > (@saldo + @limite)","","    @saldo -= valor","    true","  end","","  def depositar(valor)","    @saldo += valor","  end","","  def no_limite?","    @saldo < 0","  end","","  def ==(conta)","    conta.titular == titular &&","      conta.limite == limite &&","      conta.saldo == saldo &&","      conta.numero == numero","  end","","  def transfere(conta_destino, valor_transferencia)","    return false unless sacar(valor_transferencia)","","    conta_destino.depositar(valor_transferencia)","  end","end"]}],[{"start":{"row":38,"column":3},"end":{"row":39,"column":0},"action":"insert","lines":["",""],"id":93},{"start":{"row":39,"column":0},"end":{"row":40,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":40,"column":0},"end":{"row":40,"column":62},"action":"insert","lines":["    conta = Conta.new('2303-2', 'José da Silva', 1000.10, 500)"],"id":94}],[{"start":{"row":41,"column":0},"end":{"row":41,"column":1},"action":"insert","lines":["c"],"id":95},{"start":{"row":41,"column":1},"end":{"row":41,"column":2},"action":"insert","lines":["o"]},{"start":{"row":41,"column":2},"end":{"row":41,"column":3},"action":"insert","lines":["n"]},{"start":{"row":41,"column":3},"end":{"row":41,"column":4},"action":"insert","lines":["t"]},{"start":{"row":41,"column":4},"end":{"row":41,"column":5},"action":"insert","lines":["a"]},{"start":{"row":41,"column":5},"end":{"row":41,"column":6},"action":"insert","lines":["."]},{"start":{"row":41,"column":6},"end":{"row":41,"column":7},"action":"insert","lines":["t"]}],[{"start":{"row":41,"column":6},"end":{"row":41,"column":7},"action":"remove","lines":["t"],"id":96},{"start":{"row":41,"column":6},"end":{"row":41,"column":13},"action":"insert","lines":["titular"]}],[{"start":{"row":41,"column":13},"end":{"row":41,"column":14},"action":"insert","lines":["."],"id":97},{"start":{"row":41,"column":14},"end":{"row":41,"column":15},"action":"insert","lines":["c"]},{"start":{"row":41,"column":15},"end":{"row":41,"column":16},"action":"insert","lines":["l"]},{"start":{"row":41,"column":16},"end":{"row":41,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":41,"column":14},"end":{"row":41,"column":17},"action":"remove","lines":["cla"],"id":98},{"start":{"row":41,"column":14},"end":{"row":41,"column":19},"action":"insert","lines":["class"]}],[{"start":{"row":40,"column":2},"end":{"row":40,"column":4},"action":"remove","lines":["  "],"id":99},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":41,"column":0},"end":{"row":41,"column":1},"action":"insert","lines":["p"],"id":100},{"start":{"row":41,"column":1},"end":{"row":41,"column":2},"action":"insert","lines":["u"]},{"start":{"row":41,"column":2},"end":{"row":41,"column":3},"action":"insert","lines":["t"]},{"start":{"row":41,"column":3},"end":{"row":41,"column":4},"action":"insert","lines":["s"]}],[{"start":{"row":41,"column":4},"end":{"row":41,"column":5},"action":"insert","lines":[" "],"id":101}],[{"start":{"row":4,"column":42},"end":{"row":4,"column":43},"action":"insert","lines":["."],"id":102},{"start":{"row":4,"column":43},"end":{"row":4,"column":44},"action":"insert","lines":["n"]},{"start":{"row":4,"column":44},"end":{"row":4,"column":45},"action":"insert","lines":["e"]},{"start":{"row":4,"column":45},"end":{"row":4,"column":46},"action":"insert","lines":["w"]}],[{"start":{"row":41,"column":24},"end":{"row":42,"column":0},"action":"insert","lines":["",""],"id":103},{"start":{"row":42,"column":0},"end":{"row":42,"column":1},"action":"insert","lines":["p"]},{"start":{"row":42,"column":1},"end":{"row":42,"column":2},"action":"insert","lines":["u"]},{"start":{"row":42,"column":2},"end":{"row":42,"column":3},"action":"insert","lines":["t"]},{"start":{"row":42,"column":3},"end":{"row":42,"column":4},"action":"insert","lines":["s"]}],[{"start":{"row":42,"column":4},"end":{"row":42,"column":5},"action":"insert","lines":[" "],"id":104},{"start":{"row":42,"column":5},"end":{"row":42,"column":6},"action":"insert","lines":["c"]},{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["o"]},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["n"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["a"]},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["t"]}],[{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"remove","lines":["t"],"id":105},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"remove","lines":["a"]}],[{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["t"],"id":106},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["a"]},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["."]},{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["c"]},{"start":{"row":42,"column":12},"end":{"row":42,"column":13},"action":"insert","lines":["l"]},{"start":{"row":42,"column":13},"end":{"row":42,"column":14},"action":"insert","lines":["a"]},{"start":{"row":42,"column":14},"end":{"row":42,"column":15},"action":"insert","lines":["s"]},{"start":{"row":42,"column":15},"end":{"row":42,"column":16},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":15},"end":{"row":6,"column":22},"action":"remove","lines":["titular"],"id":107},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["C"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["l"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["i"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["e"]},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["n"]},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["t"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["."],"id":108},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["n"]},{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"insert","lines":["e"]},{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":["w"]}],[{"start":{"row":4,"column":33},"end":{"row":4,"column":47},"action":"remove","lines":["= Cliente.new,"],"id":109},{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"remove","lines":[" "]}],[{"start":{"row":4,"column":32},"end":{"row":4,"column":33},"action":"insert","lines":[","],"id":110}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":28},"action":"insert","lines":["()"],"id":111}],[{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":["t"],"id":112},{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":["i"]}],[{"start":{"row":6,"column":27},"end":{"row":6,"column":29},"action":"remove","lines":["ti"],"id":113},{"start":{"row":6,"column":27},"end":{"row":6,"column":34},"action":"insert","lines":["titular"]}],[{"start":{"row":0,"column":0},"end":{"row":38,"column":3},"action":"remove","lines":["require_relative 'cliente'","class Conta","  attr_accessor :limite, :titular , :saldo, :numero","","  def initialize(numero, titular, saldo, limite)","    @numero = numero","    @titular = Cliente.new(titular)","    @saldo = saldo","    @limite = limite","  end","","  def sacar(valor)","    return false if valor > (@saldo + @limite)","","    @saldo -= valor","    true","  end","","  def depositar(valor)","    @saldo += valor","  end","","  def no_limite?","    @saldo < 0","  end","","  def ==(conta)","    conta.titular == titular &&","      conta.limite == limite &&","      conta.saldo == saldo &&","      conta.numero == numero","  end","","  def transfere(conta_destino, valor_transferencia)","    return false unless sacar(valor_transferencia)","","    conta_destino.depositar(valor_transferencia)","  end","end"],"id":114},{"start":{"row":0,"column":0},"end":{"row":39,"column":0},"action":"insert","lines":["require_relative 'cliente'","class Conta","  attr_accessor :limite, :titular , :saldo, :numero","","  def initialize(numero, titular, saldo, limite)","    @numero = numero","    @titular = Cliente.new(titular.split(\" \").titular[0], titular.split.[1])","    @saldo = saldo","    @limite = limite","  end","","  def sacar(valor)","    return false if valor > (@saldo + @limite)","","    @saldo -= valor","    true","  end","","  def depositar(valor)","    @saldo += valor","  end","","  def no_limite?","    @saldo < 0","  end","","  def ==(conta)","    conta.titular == titular &&","      conta.limite == limite &&","      conta.saldo == saldo &&","      conta.numero == numero","  end","","  def transfere(conta_destino, valor_transferencia)","    return false unless sacar(valor_transferencia)","","    conta_destino.depositar(valor_transferencia)","  end","end",""]}],[{"start":{"row":6,"column":58},"end":{"row":6,"column":75},"action":"remove","lines":["titular.split.[1]"],"id":115},{"start":{"row":6,"column":57},"end":{"row":6,"column":58},"action":"remove","lines":[" "]},{"start":{"row":6,"column":56},"end":{"row":6,"column":57},"action":"remove","lines":[","]}],[{"start":{"row":6,"column":56},"end":{"row":6,"column":57},"action":"insert","lines":[","],"id":116}],[{"start":{"row":6,"column":57},"end":{"row":6,"column":58},"action":"insert","lines":[" "],"id":117}],[{"start":{"row":6,"column":58},"end":{"row":6,"column":87},"action":"insert","lines":["titular.split(\" \").titular[0]"],"id":118}],[{"start":{"row":6,"column":85},"end":{"row":6,"column":86},"action":"remove","lines":["0"],"id":119}],[{"start":{"row":6,"column":85},"end":{"row":6,"column":86},"action":"insert","lines":["1"],"id":120}],[{"start":{"row":6,"column":56},"end":{"row":6,"column":57},"action":"insert","lines":["."],"id":121},{"start":{"row":6,"column":57},"end":{"row":6,"column":58},"action":"insert","lines":["t"]},{"start":{"row":6,"column":58},"end":{"row":6,"column":59},"action":"insert","lines":["u"]}],[{"start":{"row":6,"column":58},"end":{"row":6,"column":59},"action":"remove","lines":["u"],"id":122}],[{"start":{"row":6,"column":58},"end":{"row":6,"column":59},"action":"insert","lines":["o"],"id":123},{"start":{"row":6,"column":59},"end":{"row":6,"column":60},"action":"insert","lines":["_"]},{"start":{"row":6,"column":60},"end":{"row":6,"column":61},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":92},"end":{"row":6,"column":93},"action":"insert","lines":["."],"id":124},{"start":{"row":6,"column":93},"end":{"row":6,"column":94},"action":"insert","lines":["t"]},{"start":{"row":6,"column":94},"end":{"row":6,"column":95},"action":"insert","lines":["o"]}],[{"start":{"row":6,"column":93},"end":{"row":6,"column":95},"action":"remove","lines":["to"],"id":125},{"start":{"row":6,"column":93},"end":{"row":6,"column":97},"action":"insert","lines":["to_s"]}],[{"start":{"row":6,"column":35},"end":{"row":6,"column":97},"action":"remove","lines":["split(\" \").titular[0].to_s, titular.split(\" \").titular[1].to_s"],"id":126},{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"remove","lines":["."]}],[{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["."],"id":127},{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"insert","lines":["t"]},{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"insert","lines":["o"]},{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["s"]}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"remove","lines":["s"],"id":128}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["_"],"id":129}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"remove","lines":["_"],"id":130},{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"remove","lines":["o"]},{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"remove","lines":["t"]},{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"remove","lines":["."]}]]},"ace":{"folds":[],"scrolltop":240,"scrollleft":0,"selection":{"start":{"row":23,"column":14},"end":{"row":23,"column":14},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1570942122239}