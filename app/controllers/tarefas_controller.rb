class TarefasController < ApplicationController
  def index
  	@funcionario = Funcionario.find(params[:funcionario_id])
  	@tarefas = @funcionario.tarefas
  end
  def new
  	@funcionario = Funcionario.find(params[:funcionario_id])
    @tarefa = Tarefa.new
  end
end
