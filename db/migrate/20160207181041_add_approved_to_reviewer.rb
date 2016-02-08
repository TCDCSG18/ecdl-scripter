class AddApprovedToReviewer < ActiveRecord::Migration
  def self.up
    add_column :reviewers, :approved, :boolean, :default => false, :null => false
    add_index  :reviewers, :approved
  end

  def self.down
    remove_index  :reviewers, :approved
    remove_column :reviewers, :approved
  end
end
