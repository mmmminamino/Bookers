class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string:"本の感想"
      t.string:"感想"
      t.timestamps
    end
  end
end
