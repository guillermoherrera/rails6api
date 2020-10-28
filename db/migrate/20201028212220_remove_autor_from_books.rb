class RemoveAutorFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :autor, :string
  end
end
