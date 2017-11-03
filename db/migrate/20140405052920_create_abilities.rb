class CreateAbilities < ActiveRecord::Migration[4.2]
  def change
    create_table :abilities do |t|
      t.string :domain
      t.string :ability

      t.timestamps
    end
  end
end
