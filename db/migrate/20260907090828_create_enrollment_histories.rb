class CreateEnrollmentHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollment_histories do |t|
      t.references :enrollment, null: false, foreign_key: true
      t.string :action

      t.timestamps
    end
  end
end
