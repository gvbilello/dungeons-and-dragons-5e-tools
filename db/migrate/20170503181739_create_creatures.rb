class CreateCreatures < ActiveRecord::Migration[5.0]
  def change
    create_table :creatures do |t|
    	# general information
   		t.string :name, null: false
   		t.string :size
   		t.string :creature_type
   		t.string :subtype
   		t.string :alignment
   		t.integer :armor_class
   		t.integer :hit_points
   		t.string :hit_dice
   		t.string :speed
   		# main stats
   		t.integer :strength
   		t.integer :dexterity
   		t.integer :constitution
   		t.integer :intelligence
   		t.integer :wisdom
   		t.integer :charisma
   		# saving throws
   		t.integer :constitution_save
   		t.integer :intelligence_save
   		t.integer :wisdom_save
   		# skills
   		t.integer :athletics
   		t.integer :acrobatics
   		t.integer :stealth
   		t.integer :arcana
   		t.integer :history
   		t.integer :investigation
   		t.integer :nature
   		t.integer :religion
   		t.integer :insight
   		t.integer :medicine
   		t.integer :perception
   		t.integer :survival
   		t.integer :deception
   		t.integer :intimidation
   		t.integer :performance
   		t.integer :persuasion
   		# damage modifiers and other
   		t.string :damage_vulnerabilities
   		t.string :damage_resistances
   		t.string :damage_immunities
   		t.string :condition_immunities
   		t.string :senses
   		t.string :languages
   		t.string :challenge_rating

   		t.timestamps
    end
  end
end
