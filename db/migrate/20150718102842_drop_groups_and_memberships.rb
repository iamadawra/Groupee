class DropGroupsAndMemberships < ActiveRecord::Migration
  def change
  	drop_table :groups
  	drop_table :memberships
  end
end
