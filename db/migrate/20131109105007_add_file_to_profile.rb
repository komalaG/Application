class AddFileToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :attachment, :string
  end
end
