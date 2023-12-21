class CreatePracticeDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :practice_details do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :practice_record, null: false, foreign_key: true

      t.timestamps
    end
    add_index :practice_details, :title
  end
end
