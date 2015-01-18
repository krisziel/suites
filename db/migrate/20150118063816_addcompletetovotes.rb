class Addcompletetovotes < ActiveRecord::Migration
  def change
    add_column :votes, :complete, :boolean
  end
end
