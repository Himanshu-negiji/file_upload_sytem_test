class CreateTinyUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :tiny_urls do |t|
      t.references :file_upload, foreign_key: true
      t.string :slug

      t.timestamps
    end
  end
end
