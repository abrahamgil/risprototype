class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.datetime :startTime
      t.datetime :endTime
      t.integer :customerId
      t.string :languageTo
      t.string :languageFrom

      t.timestamps
    end
  end
end
