class AddClasseToClasse < ActiveRecord::Migration[6.0]
  def change
    add_column :classes, :classe, :string
  end
end
