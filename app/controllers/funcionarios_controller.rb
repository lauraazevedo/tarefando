class FuncionariosController < ApplicationController
def index
@funcionarios =Funcionario.all
end

def new
  @funcionario = Funcionario.new
end
end
