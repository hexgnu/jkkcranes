class PdfAttachment < ActiveRecord::Migration
  def self.up
    add_column :cranes, :pdf_file_name, :string # Original filename
    add_column :cranes, :pdf_content_type, :string # Mime type
    add_column :cranes, :pdf_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :cranes, :pdf_file_name
    remove_column :cranes, :pdf_content_type
    remove_column :cranes, :pdf_file_size
  end
end
