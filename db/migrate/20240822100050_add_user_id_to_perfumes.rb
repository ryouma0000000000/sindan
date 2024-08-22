class AddUserIdToPerfumes < ActiveRecord::Migration[6.1]
  def change
    add_column :perfumes, :user_id, :integer
    add_index :perfumes, :user_id
  end
end
