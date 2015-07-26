class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :name
<<<<<<< Updated upstream
      t.boolean     :purchased, default: true
=======
      t.boolean     :purchased, default: false
>>>>>>> Stashed changes
      t.timestamps
    end
  end
end
