# == Schema Information
#
# Table name: groups
#
#  id   :integer          not null, primary key
#  type :string
#

class Group < ActiveRecord::Base  
  groupify :group, members: [:users, :assignments], default_members: :users
end
