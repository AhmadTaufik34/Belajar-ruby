class CreateRayons < ActiveRecord::Migration[6.0]
  def change
    create_table :rayons do |t|
      t.string :name
      t.string :nomorruangan
      t.string :pembimbing
      t.string :ketuarayon

      t.timestamps
    end
  end
end
