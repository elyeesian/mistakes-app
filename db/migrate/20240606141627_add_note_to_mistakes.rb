class AddNoteToMistakes < ActiveRecord::Migration[7.1]
  def up
    add_column :mistakes, :description, :text
  end

  def down
    remove_column :mistakes, :description
  end
end
