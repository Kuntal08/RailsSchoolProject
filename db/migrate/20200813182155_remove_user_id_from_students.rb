class RemoveUserIdFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :part_number, :integer
  end
end
