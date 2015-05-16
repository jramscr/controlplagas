class AddPositionRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :position, index: true
  end
end
