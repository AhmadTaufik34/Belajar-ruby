class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :address
      t.string :city
      t.integer :nik

      t.timestamps
    end
  end
end
