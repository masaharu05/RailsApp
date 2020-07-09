class CreateVodkas < ActiveRecord::Migration[6.0]
  def change
    create_table :vodkas do |t|
      t.text :name
      t.text :memo

      t.timestamps
    end
  end
end
