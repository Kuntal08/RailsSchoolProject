class AddStageToClasse < ActiveRecord::Migration[6.0]
  def change
    add_column :classes, :stage, :string
  end
end
