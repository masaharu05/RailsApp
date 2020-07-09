class CreateGins < ActiveRecord::Migration[6.0]
  def change
    create_table :gins do |t|
      t.text :name
      t.text :memo
      

      t.timestamps
    end
  end
end
