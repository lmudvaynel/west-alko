class AddColumnToRefineryVolumes < ActiveRecord::Migration
  def change
    add_column :refinery_volumes, :used_in_home, :boolean, :default => false
  end
end
