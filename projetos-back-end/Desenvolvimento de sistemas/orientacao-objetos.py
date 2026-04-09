# ============================================
# CONTEXTO DO PROJETO
# ============================================
# Código desenvolvido em junho de 2025 durante o curso técnico.
#
# O objetivo do projeto era aplicar conceitos de Programação Orientada a Objetos (POO) em Python.
# Mesmo sendo um exercício, ele já demonstra aplicação de conceitos importantes como:
# - modelagem com classes
# - definição de atributos e métodos
# - controle de estado interno dos objetos
#
# Grande parte da lógica foi influenciada por conhecimentos prévios em Java,
# aplicando os mesmos conceitos independentemente da linguagem.
#
# Revisando hoje, este código não representa um nível pleno,
# mas evidencia uma base sólida de raciocínio orientado a objetos já em desenvolvimento.


class Pessoa:
  # Classe simples representando uma pessoa com nome e idade
  def __init__(self, nome, idade):
    self.nome = nome
    self.idade = idade

  # Método responsável por exibir uma apresentação básica do objeto
  def apresentar(self):
    print(f"Olá! Meu nome é {self.nome} e tenho {self.idade} anos.")

# Criando um objeto da classe Pessoa e executando seu comportamento
p1 = Pessoa("Lucas", 20)
p1.apresentar()


class Carro:
  # Classe que representa um carro com atributos básicos e controle de estado (ligado/desligado)
  def __init__(self, modelo, ano, cor):
    self.modelo = modelo
    self.ano = ano
    self.cor = cor
    self.ligado = False  # Estado inicial do carro

  # Método que altera o estado do carro para ligado
  def ligar(self):
    if not self.ligado:
      self.ligado = True
      print(f"{self.modelo} está ligado!")
    else:
      print(f"{self.modelo} já está ligado.")

  # Método que altera o estado do carro para desligado
  def desligar(self):
    if self.ligado:
      self.ligado = False
      print(f"{self.modelo} foi desligado.")
    else:
      print(f"{self.modelo} já está desligado.")

  # Método para exibir informações do carro
  def info(self):
    print(f"Modelo: {self.modelo} | Ano: {self.ano} | Cor: {self.cor}")

# Teste da classe Carro com mudança de estado
meu_carro = Carro("Astra", 2010, "Preto")
meu_carro.info()
meu_carro.ligar()
meu_carro.desligar()


class Banco:
  # Classe representando uma conta bancária simples
  def __init__(self, titular, saldo=0):
    self.titular = titular
    self.saldo = saldo

  # Método para adicionar valor ao saldo
  def depositar(self, valor):
    self.saldo += valor
    print(f"Depósito de R${valor} realizado. Saldo atual: R${self.saldo}")

  # Método para saque com validação de saldo
  def sacar(self, valor):
    if valor <= self.saldo:
      self.saldo -= valor
      print(f"Saque de R${valor} realizado. Saldo atual: R${self.saldo}")
    else:
      print("Saldo insuficiente!")

  # Método para exibir dados da conta
  def extrato(self):
    print(f"Titular: {self.titular} | Saldo: R${self.saldo}")

# Teste de operações bancárias básicas
conta = Banco("João", 1000)
conta.depositar(300)
conta.sacar(500)
conta.extrato()


class Matricula:
  # Classe que representa a matrícula de um aluno em um curso
  def __init__(self, nome_aluno, curso):
    self.nome_aluno = nome_aluno
    self.curso = curso
    self.status = "Ativo"  # Estado inicial da matrícula

  # Método para alterar o status da matrícula
  def cancelar(self):
    self.status = "Cancelado"
    print(f"Matrícula de {self.nome_aluno} foi cancelada.")

  # Método para exibir informações da matrícula
  def info(self):
    print(f"Aluno: {self.nome_aluno} | Curso: {self.curso} | Status: {self.status}")

# Teste da classe Matricula
m1 = Matricula("Maria", "Análise e Desenvolvimento de Sistemas")
m1.info()
m1.cancelar()
m1.info()


class Escola:
  # Classe que representa uma escola e mantém uma lista de alunos
  def __init__(self, nome):
    self.nome = nome
    self.alunos = []

  # Método para adicionar um aluno à lista
  def adicionar_aluno(self, nome):
    self.alunos.append(nome)
    print(f"Aluno {nome} adicionado à escola {self.nome}.")

  # Método para listar todos os alunos cadastrados
  def listar_alunos(self):
    print(f"Alunos da escola {self.nome}:")
    for aluno in self.alunos:
      print("-", aluno)

# Teste da classe Escola
escola = Escola("TechCode")
escola.adicionar_aluno("Bruno")
escola.adicionar_aluno("Ana")
escola.listar_alunos()


class Produto:
  # Classe que representa um produto com controle de estoque
  def __init__(self, nome, preco, estoque):
    self.nome = nome
    self.preco = preco
    self.estoque = estoque

  # Método para realizar venda, reduzindo o estoque
  def vender(self, quantidade):
    if quantidade <= self.estoque:
      self.estoque -= quantidade
      print(f"Venda de {quantidade}x {self.nome} realizada.")
    else:
      print("Estoque insuficiente!")

  # Método para exibir informações do produto
  def info(self):
    print(f"{self.nome} | R${self.preco} | Estoque: {self.estoque}")

# Teste da classe Produto
p1 = Produto("Mouse", 50, 10)
p1.info()
p1.vender(3)
p1.info()


class Funcionario:
    # Classe representando um funcionário com controle de salário
    def __init__(self, nome, cargo, salario):
        self.nome = nome
        self.cargo = cargo
        self.salario = salario

    # Método para aplicar aumento percentual no salário
    def aumentar_salario(self, percentual):
        aumento = self.salario * (percentual / 100)
        self.salario += aumento
        print(f"Salário aumentado em {percentual}%.")

    # Método para exibir os dados do funcionário
    def exibir_dados(self):
        print(f"Nome: {self.nome}")
        print(f"Cargo: {self.cargo}")
        print(f"Salário: R$ {self.salario:.2f}")

# Testes da classe Funcionario
f1 = Funcionario("Ana Silva", "Analista de Sistemas", 5000)
f1.exibir_dados()
f1.aumentar_salario(10)
f1.exibir_dados()