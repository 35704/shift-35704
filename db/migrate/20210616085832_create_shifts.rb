class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.references :user
      t.timestamps
    end
  end
end
