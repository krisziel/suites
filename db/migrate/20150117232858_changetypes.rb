class Changetypes < ActiveRecord::Migration
  def change
    rename_column :drinks, :type, :drinktype
  end
end
