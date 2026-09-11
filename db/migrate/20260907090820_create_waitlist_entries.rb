class CreateWaitlistEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :waitlist_entries do |t|
      t.references :course, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.string :status
      t.integer :position

      t.timestamps
    end
  end
end
