class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
    	t.string :nome_completo
    	t.string :cargo
    	t.string :email
      t.timestamps
    end
  end
end
