class CreateForums < ActiveRecord::Migration[5.1]
  def change
    create_table :forums do |t|
      t.string :subject
      t.text :content
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
