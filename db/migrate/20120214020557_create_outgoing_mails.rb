class CreateOutgoingMails < ActiveRecord::Migration
  def change
    create_table :outgoing_mails do |t|
      t.string :code
      t.string :from
      t.string :to
      t.string :concern
      t.date :date
      t.text :explanation
      t.string :attachment_file_name
      t.string :attachment_content_type

      t.timestamps
    end
  end
end
