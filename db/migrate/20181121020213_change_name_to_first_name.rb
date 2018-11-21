class ChangeNameToFirstName < ActiveRecord::Migration[5.2]
	def change
		             # TABLE     #COL    # NEW COLUMN NAME
		rename_column :contacts, :name, :first_name
  end
end
