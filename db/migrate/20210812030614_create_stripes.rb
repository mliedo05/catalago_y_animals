class CreateStripes < ActiveRecord::Migration[5.2]
  def change
    create_table :stripes do |t|
      t.string :name
      t.string :card

      t.timestamps
    end
  end
end
