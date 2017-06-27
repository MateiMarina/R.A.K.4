class RemoveContractFromContract < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :contract, :string
  end
end
