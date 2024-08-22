class AddContentToPerfumeResults < ActiveRecord::Migration[6.1]
  def change
    add_column :perfume_results, :content, :string
  end
end
