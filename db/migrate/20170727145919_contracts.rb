class Contracts < ActiveRecord::Migration[5.0]
  def change
     add_reference :contracts, :project, index: true, foreign_key: true
  end
end
