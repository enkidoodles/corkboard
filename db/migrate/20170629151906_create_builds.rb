class CreateBuilds < ActiveRecord::Migration[5.1]
  def change
    create_table :builds do |t|
      t.string :branch_id
      t.string :username

      t.timestamps
    end
  end
end