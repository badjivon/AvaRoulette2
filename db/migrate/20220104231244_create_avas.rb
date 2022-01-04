class CreateAvas < ActiveRecord::Migration[6.1]
  def change
    create_table :avas do |t|
      t.integer :number
      t.string :rare
      t.integer :batch

      t.timestamps
    end
  end
end
