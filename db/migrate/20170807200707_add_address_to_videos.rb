class AddAddressToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :address, :string
  end
end
