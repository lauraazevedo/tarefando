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
  	tarefa_params = params.require(:tarefa).permit(:titulo, :descricao, :prazo)

    @funcionario.tarefas.create(tarefa_params.merge(status: 'pendente'))

    flash[:success] = "TAREFA CRIADA COM SUCESSO"
    redirect_to funcionario_tarefas_url(@funcionario)
end

  def update
    @funcionario = Funcionario.find(params[:funcionario_id])
    @tarefa = Tarefa.find(params[:id])

    if @tarefa.status == "pendente"
      novo_status = "iniciada"
    elsif @tarefa.status == "iniciada"
      novo_status = "completa"
    end

    @tarefa.status = novo_status
    @tarefa.save

    redirect_to funcionario_tarefas_url(@funcionario)
  end
end
