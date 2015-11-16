class AddUniquenesstToShort < ActiveRecord::Migration
  def change
    add_index :urls, :short, unique: true
  end
end
