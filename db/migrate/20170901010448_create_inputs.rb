class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.integer :feel
      t.string :event
      t.datetime :event_datetime

      t.timestamps
    end
  end
end
