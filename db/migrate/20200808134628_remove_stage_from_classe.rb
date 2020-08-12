class RemoveStageFromClasse < ActiveRecord::Migration[6.0]
  def change
    remove_column :classes, :class, :string
    remove_column :classes, :stage, :string
  end
end
