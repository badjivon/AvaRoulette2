class CreateAvas < ActiveRecord::Migration[6.1]
  def change
    create_table :avas do |t|
      t.string :rare
      t.integer :drop
      t.timestamps
    end
  end
end
