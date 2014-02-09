class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :artest, index: true
      t.references :event, index: true
      t.references :user, index: true
      t.references :venue, index: true
      t.integer :rating
      t.text :review
      t.date :date

      t.timestamps
    end
  end
end
