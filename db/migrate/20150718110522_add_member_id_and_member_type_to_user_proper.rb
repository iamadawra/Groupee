class AddMemberIdAndMemberTypeToUserProper < ActiveRecord::Migration
  def change
    add_column :users, :member_id, :integer
    add_column :users, :member_type, :string
  end
end
