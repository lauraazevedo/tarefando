class TarefasController < ApplicationController
  def index
  	@funcionario = Funcionario.find(params[:funcionario_id])
  	@tarefas = @funcionario.tarefas
  end
  def new
  	@funcionario = Funcionario.find(params[:funcionario_id])
    @tarefa = Tarefa.new
  end
  def create
  	@funcionario = Funcionario.find(params[:funcionario_id])
  	tarefa_params = params.require(:tarefa).permit(:titulo, :descricao, :prazo, :status)
    @funcionario.tarefas.create(tarefa_params)
    
    flash[:success] = "TAREFA CRIADA COM SUCESSO"
    redirect_to funcionario_tarefas_url(@funcionario)
end
end
