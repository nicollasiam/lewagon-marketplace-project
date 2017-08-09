class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :videos, :address, :name
  end
end
