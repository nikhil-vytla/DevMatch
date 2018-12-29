# Check out https://edgeguides.rubyonrails.org/active_record_migrations.html for more info on active record migrations.
class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.timestamps
    end
  end
end
