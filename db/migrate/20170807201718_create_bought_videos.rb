class CreateBoughtVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :bought_videos do |t|
      t.references :video, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
