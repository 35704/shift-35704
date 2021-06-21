class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.string :title,        null: false
      t.text :content
      t.datetime :start_time, null: false
      t.references :user,     null: false
      t.timestamps
    end
  end
end
