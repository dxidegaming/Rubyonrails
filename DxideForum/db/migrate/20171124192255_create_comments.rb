class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :viewthread, index: true

      t.timestamps
    end
  end
end
