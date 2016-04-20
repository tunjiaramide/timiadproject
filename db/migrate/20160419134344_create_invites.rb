class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :title
      t.date :date
      t.string :category
      t.string :location

      t.timestamps null: false
    end
  end
end
