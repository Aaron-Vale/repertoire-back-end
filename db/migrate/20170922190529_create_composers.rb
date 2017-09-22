class CreateComposers < ActiveRecord::Migration[5.1]
  def change
    create_table :composers do |t|
      t.string :name

      t.timestamps
    end
  end
end
