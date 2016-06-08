class CreatePagesWidgets < ActiveRecord::Migration[5.0]
  def change
    create_table :pages_widgets do |t|
      t.integer :page_id
      t.integer :widget_id

      t.timestamps
    end
  end
end
