class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.integer :topic_id

      t.timestamps
    end
  end
end
