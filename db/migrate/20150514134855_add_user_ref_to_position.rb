class AddUserRefToPosition < ActiveRecord::Migration
  def change
    add_reference :positions, :users, index: true
  end
end
