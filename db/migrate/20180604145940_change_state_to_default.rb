class ChangeStateToDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :activities, :state, :integer, default: 0
  end
end
