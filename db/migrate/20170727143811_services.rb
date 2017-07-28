class Services < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :company, index: true, foreign_key: true
  end
end
