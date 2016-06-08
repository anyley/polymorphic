class CreateWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :widgets do |t|
      t.string :name
      t.references :drawable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
