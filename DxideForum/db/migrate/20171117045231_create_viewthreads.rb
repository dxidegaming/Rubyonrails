class CreateViewthreads < ActiveRecord::Migration[4.2]
  def change
    create_table :viewthreads do |t|
      t.string :Subject
      t.string :Text
      t.string :CreatedBy

      t.timestamps
    end
  end
end
