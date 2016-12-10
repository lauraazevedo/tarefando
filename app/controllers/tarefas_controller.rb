class TarefasController < ApplicationController
  def index
  	@funcionario = Funcionario.find(params[:funcionario_id])
  	@tarefas = @funcionario.tarefas
  end
end
