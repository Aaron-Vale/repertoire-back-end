class AddComposerToSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :composer, foreign_key: true
  end
end
