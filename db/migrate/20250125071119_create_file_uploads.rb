class CreateFileUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :file_uploads do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :file

      t.timestamps
    end
  end
end
