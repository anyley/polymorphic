class AddColumnToWidgets < ActiveRecord::Migration[5.0]
  def change
    change_table :widgets do |t|
      t.rename :drawable_type, :element_type
      t.rename :drawable_id, :element_id
    end
  end
end
