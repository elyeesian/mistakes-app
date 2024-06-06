class RemoveDescFromUserMistakes < ActiveRecord::Migration[7.1]
  def up
    remove_column :user_mistakes, :note
  end
  
  def down
    add_column :user_mistakes, :note, :text
  end
end
