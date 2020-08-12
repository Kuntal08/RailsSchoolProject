class CreateFees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees do |t|
      t.integer :admission_fee
      t.integer :annual_fee
      t.integer :caution_money
      t.integer :tution_fee
      t.integer :almanac_fee
      t.integer :total_fee

      t.timestamps
    end
  end
end
