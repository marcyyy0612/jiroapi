class RenameAddColumnFood < ActiveRecord::Migration[5.2]
  def change
    rename_column :foods, :type, :genre
  end
end
