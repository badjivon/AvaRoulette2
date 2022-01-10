class AddOwnerToAvas < ActiveRecord::Migration[6.1]
  def change
    add_column :avas, :owner, :string, array: true, default: []
  end
end
