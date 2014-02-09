class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.references :artist, index: true
      t.references :venue, index: true

      t.timestamps
    end
  end
end