class RemoveClassFromClasse < ActiveRecord::Migration[6.0]
  def change
    remove_column :classes, :class, :string
  end
end
