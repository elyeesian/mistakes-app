class CreateMistakes < ActiveRecord::Migration[7.1]
  def up
    create_table :mistakes do |t|
      t.string :name
      t.integer :severity
      t.timestamps
    end
  end

  def down
    drop_table :mistakes
  end
end
