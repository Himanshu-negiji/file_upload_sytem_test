class AddTinyUrlToFileUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :file_uploads, :tiny_url, :string
  end
end
