# frozen_string_literal: true
class RemoveBuildFromReleases < ActiveRecord::Migration[5.1]
  def up
    remove_column :releases, :build_id
    remove_column :kubernetes_releases, :build_id
  end

  def down
    add_column :releases, :build_id, :string
    add_index :releases, :build_id
    add_column :kubernetes_releases, :build_id, :string
    add_index :kubernetes_releases, :build_id
  end
end
