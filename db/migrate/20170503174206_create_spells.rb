class CreateSpells < ActiveRecord::Migration[5.0]
  def change
  	create_table :spells do |t|
  		t.string :name, null: false
  		t.string :desc, null: false
  		t.string :higher_level
  		t.string :page, null: false
  		t.string :range, null: false
  		t.string :components, null: false
  		t.string :material
  		t.string :ritual, null: false
  		t.string :duration, null: false
  		t.string :concentration, null: false
  		t.string :casting_time, null: false
  		t.string :level, null: false
  		t.string :school, null: false
  		t.string :spell_class, null: false
  		t.string :archetype
  		t.string :circles
  		t.string :oaths
  		t.string :domains
  		t.string :patrons

  		t.timestamps
  	end
  end
end