class AddImageToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :string
    has_one_attached :image
  end
end
