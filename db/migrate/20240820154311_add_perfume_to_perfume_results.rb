class AddPerfumeToPerfumeResults < ActiveRecord::Migration[6.1]
  def change
    add_reference :perfume_results, :perfume, null: false, foreign_key: true
  end
end
