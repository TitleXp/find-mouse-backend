class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :dob
      t.string :password_digest
      t.string :username
      t.string :lab_affilliate
      t.string :profile_pic
      t.boolean :iacuc_certified
      t.boolean :is_admin
      t.string :email

      t.timestamps
    end
  end
end
