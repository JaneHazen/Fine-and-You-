class AddPhoneToUsers < ActiveRecord::Migration[5.1]
  def change
     change_table :users do |t|
      t.column :phone, :string
    end
  end
end
