class AddClasseRefToSections < ActiveRecord::Migration[6.0]
  def change
    add_reference :sections, :classe, foreign_key: true
  end
end
