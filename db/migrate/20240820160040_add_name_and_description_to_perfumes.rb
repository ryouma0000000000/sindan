class AddNameAndDescriptionToPerfumes < ActiveRecord::Migration[6.1]
  def change
    add_column :perfumes, :description, :text
  end
end
