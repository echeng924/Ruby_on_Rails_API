class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :rap, foreign_key: true

      t.timestamps
    end
  end
end
