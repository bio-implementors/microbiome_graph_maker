class CreateGraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :graphs do |t|
      t.string :file_name
      t.string :tax_level
      t.string :clade_num

      t.timestamps
    end
  end
end
