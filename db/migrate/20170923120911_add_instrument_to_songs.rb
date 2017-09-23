class AddInstrumentToSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :instrument, foreign_key: true
  end
end
