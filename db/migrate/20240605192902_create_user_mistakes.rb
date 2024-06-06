class CreateUserMistakes < ActiveRecord::Migration[7.1]
  def up
    create_table :user_mistakes do |t|
      t.references :user, foreign_key: true
      t.references :mistake, foreign_key: true
      t.text :note
      t.timestamps
    end
  end

  def down
    drop_table :user_mistakes
  end
end
