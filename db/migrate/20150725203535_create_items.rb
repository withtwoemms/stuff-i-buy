class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :name
      t.boolean     :purchased, default: false
      t.timestamps
    end
  end
end
