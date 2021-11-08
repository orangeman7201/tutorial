class AddGravaterIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gravatar_id, :string
  end
end
