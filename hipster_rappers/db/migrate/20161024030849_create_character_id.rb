class CreateCharacterId < ActiveRecord::Migration[5.0]
  def change
    create_table :character_ids do |t|
      def new_column
        add_column :raps, :character_id, :integer
      end
    end
  end
end
