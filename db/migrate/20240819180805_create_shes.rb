class CreateShes < ActiveRecord::Migration[6.1]
  def change
    create_table :shes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
