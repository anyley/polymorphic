class CreateWidgetAttrs < ActiveRecord::Migration[5.0]
  def change
    create_table :widget_attrs do |t|
      t.references :widget, foreign_key: true
      t.string :name
      t.string :value
      t.integer :atype

      t.timestamps
    end
  end
end
