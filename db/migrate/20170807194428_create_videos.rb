class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :file
      t.float :frame_rate
      t.integer :width
      t.integer :height
      t.string :enconding
      t.float :length
      t.boolean :audio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
