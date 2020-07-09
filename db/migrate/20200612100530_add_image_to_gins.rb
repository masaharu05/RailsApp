class AddImageToGins < ActiveRecord::Migration[6.0]
  def change
    add_column :gins, :image, :string
  end
end
