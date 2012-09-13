class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.decimal, :id
      t.string :sender_id,
      t.string :subject,
      t.string :content

      t.timestamps
    end
  end
end
