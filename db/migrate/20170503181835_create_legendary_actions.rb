class CreateLegendaryActions < ActiveRecord::Migration[5.0]
  def change
    create_table :legendary_actions do |t|
    	t.references :creature, null: false
    	t.string :name
    	t.string :desc
    	t.integer :attack_bonus

    	t.timestamps
    end
  end
end
