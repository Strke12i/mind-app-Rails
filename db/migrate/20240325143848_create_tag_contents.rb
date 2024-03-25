class CreateTagContents < ActiveRecord::Migration[7.1]
  def change
    create_table :tag_contents do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
