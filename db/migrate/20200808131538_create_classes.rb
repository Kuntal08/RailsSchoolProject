class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :class
      t.string :stage
      t.text :description

      t.timestamps
    end
  end
end
