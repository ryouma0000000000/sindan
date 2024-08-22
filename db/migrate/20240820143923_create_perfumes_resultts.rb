class CreatePerfumesResultts < ActiveRecord::Migration[6.1]
  def change
    create_table :perfumes_resultts do |t|
      t.text :content
      t.references :perfume, null: false, foreign_key: true

      t.timestamps
    end
  end
end
