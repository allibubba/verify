class <%= migration_class_name %> < ActiveRecord::Migration

  def self.up
    create_table :verifications, :force => true do |t|
      t.string :type
      t.string :candidate_id
      t.integer :revision
      t.string :order_id
      t.string :status
      t.string :result
      t.timestamps
    end
  end
  def self.down
    drop_table :verifications
  end
end
