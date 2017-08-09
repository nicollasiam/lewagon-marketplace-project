class AddPriceToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :price, :float
  end
end
