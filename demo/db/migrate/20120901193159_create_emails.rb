class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :from_user_id
      t.string :from_name
      t.string :subject
      t.text :content
      t.datetime :time_sent
      t.string :ps_id

      t.timestamps
    end
  end
end
