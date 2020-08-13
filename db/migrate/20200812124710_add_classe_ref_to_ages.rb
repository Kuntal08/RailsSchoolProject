class AddClasseRefToAges < ActiveRecord::Migration[6.0]
  def change
    add_reference :ages, :classe, foreign_key: true
  end
end
