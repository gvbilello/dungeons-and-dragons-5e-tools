class CreateSpecialAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :special_abilities do |t|
    	t.string :name
    	t.string :desc
    	t.integer :attack_bonus
    	t.string :damage_dice
    	t.integer :damage_bonus

    	t.timestamps
    end
  end
end
