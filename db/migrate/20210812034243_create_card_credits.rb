class CreateCardCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :card_credits do |t|
      t.integer :nro_card

      t.timestamps
    end
  end
end
