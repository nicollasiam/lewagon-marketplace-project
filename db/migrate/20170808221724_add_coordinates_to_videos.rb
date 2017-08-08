class AddCoordinatesToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :location, :string
    add_column :videos, :latitude, :float
    add_column :videos, :longitude, :float
  end
end
