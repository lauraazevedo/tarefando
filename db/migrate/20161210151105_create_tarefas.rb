class CreateTarefas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarefas do |t|
    	t.string :titulo
    	t.string :descricao
    	t.integer :prazo
      	t.references :funcionario
      	t.string :status
      t.timestamps
    end
  end
end
