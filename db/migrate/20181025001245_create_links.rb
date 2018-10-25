class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|

      t.string :title 
      t.text :lien
      t.belongs_to :user
      t.timestamps
    end
  end
end
