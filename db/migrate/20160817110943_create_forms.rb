class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
