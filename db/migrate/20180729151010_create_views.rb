class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.string :name
      t.string :averagerating
      t.string :oid
      t.string :provenance

      t.timestamps
    end
  end
end
