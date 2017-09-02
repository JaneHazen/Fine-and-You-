class AddForiegnKeyToInputs < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.column :user_id, :integer
    end
  end
end
