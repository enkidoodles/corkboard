class AddNameToBranches < ActiveRecord::Migration[5.1]
  def change
    add_column :branches, :name, :string
  end
end
