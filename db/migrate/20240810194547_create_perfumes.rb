class CreatePerfume < ActiveRecord::Migration[6.1]
  def change
    create_table :perfumes do |t|
      t.string :question
      t.text :number
      t.text :content
      t.string :name
      t.string :result
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.timestamps



    end
  end



  def change
    create_table :user do |t|

      has_many :perfumes, dependent: :destroy

      t.timestamps
    end
  end







end
