class AddColorBackgroundUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :color_background_user, :string
  end
end
