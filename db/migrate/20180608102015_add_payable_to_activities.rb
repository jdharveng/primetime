class AddPayableToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :payable, :boolean, default:false
  end
end
