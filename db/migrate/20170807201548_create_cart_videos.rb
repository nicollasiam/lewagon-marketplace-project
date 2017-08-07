class CreateCartVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_videos do |t|
      t.references :video, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
