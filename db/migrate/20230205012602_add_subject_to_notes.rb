class AddSubjectToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :subject_id, :integer
    add_index  :notes, :subject_id
  end
end
