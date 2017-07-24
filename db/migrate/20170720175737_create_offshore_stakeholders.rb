class CreateOffshoreStakeholders < ActiveRecord::Migration[5.0]
  def change
    create_table :offshore_stakeholders do |t|
      t.references :offshore, foreign_key: true
      t.references :stakeholder, foreign_key: true

      t.timestamps
    end
  end
end
