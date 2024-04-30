class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:messages)  # Check if table exists
      create_table :messages do |t|
        t.references :room, null: false, foreign_key: true
        t.text :body

        t.timestamps
      end
    end
  end
end

