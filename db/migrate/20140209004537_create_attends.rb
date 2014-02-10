class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :event, index: true
      t.references :user, index: true
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
