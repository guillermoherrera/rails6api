class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :nombre
      t.string :aprellido
      t.integer :edad

      t.timestamps
    end
  end
end
