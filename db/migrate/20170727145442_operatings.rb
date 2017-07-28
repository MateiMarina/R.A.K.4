class Operatings < ActiveRecord::Migration[5.0]
  def change
     add_reference :operatings, :company, index: true, foreign_key: true
  end
end
