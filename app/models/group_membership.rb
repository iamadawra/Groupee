# == Schema Information
#
# Table name: group_memberships
#
#  id              :integer          not null, primary key
#  member_type     :string
#  member_id       :integer
#  group_id        :integer
#  group_name      :string
#  membership_type :string
#

class GroupMembership < ActiveRecord::Base  
  groupify :group_membership
end
