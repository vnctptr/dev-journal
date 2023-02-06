class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.datetime :created
      t.text :content

      t.timestamps
    end
  end
end
