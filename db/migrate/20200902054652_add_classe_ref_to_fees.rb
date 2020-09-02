class AddClasseRefToFees < ActiveRecord::Migration[6.0]
  def change
    add_reference :fees, :classe, foreign_key: true
  end
end
