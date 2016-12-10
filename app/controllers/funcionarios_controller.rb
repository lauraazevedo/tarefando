class FuncionariosController < ApplicationController
def index
@funcionarios =Funcionario.all
end

def new
  @funcionario = Funcionario.new
end
def create

Funcionario.create(params.require(:funcionario).permit(:nome_completo, :email, :cargo))
flash[:success] = "Funcionário criado com sucesso"
  redirect_to funcionarios_url
end
end
