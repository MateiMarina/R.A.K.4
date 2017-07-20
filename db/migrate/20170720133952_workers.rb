class Workers < ActiveRecord::Migration[5.0]
  def change
    drop_table :workers
  end
end
