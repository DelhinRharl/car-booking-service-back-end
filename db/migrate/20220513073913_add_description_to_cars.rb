class AddDescriptionToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :description, :string
  end
end
