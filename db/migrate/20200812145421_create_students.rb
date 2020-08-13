class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth_date
      t.integer :age
      t.integer :academic_year
      t.string :father_name
      t.string :mother_name
      t.text :address
      t.integer :contact

      t.timestamps
    end
  end
end
