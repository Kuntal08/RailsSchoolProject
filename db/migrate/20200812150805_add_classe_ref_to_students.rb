class AddClasseRefToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :classe, foreign_key: true
  end
end
