class CreateAges < ActiveRecord::Migration[6.0]
  def change
    create_table :ages do |t|
      t.date :date_from
      t.date :date_to
      t.integer :age_from
      t.integer :age_to
      t.date :date_as

      t.timestamps
    end
  end
end
