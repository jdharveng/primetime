class AddPictureToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :picture, :string
  end
end
