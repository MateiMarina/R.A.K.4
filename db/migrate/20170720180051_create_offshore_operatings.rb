class CreateOffshoreOperatings < ActiveRecord::Migration[5.0]
  def change
    create_table :offshore_operatings do |t|
      t.references :offshore, foreign_key: true
      t.references :operating, foreign_key: true

      t.timestamps
    end
  end
end
