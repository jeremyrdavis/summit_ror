class CreateStaffingRequests < ActiveRecord::Migration
  def change
    create_table :staffing_requests do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
