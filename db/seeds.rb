# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CREATE D&D 5E SPELL DATABASE
# link to D&D 5e Spell JSON by Reddit user droiddruid
spells_link = 'https://dl.dropboxusercontent.com/s/121t7xstyyeofxw/5e-SRD-Spells.json'

# parse and convert link to URI object
spells_uri = URI.parse(spells_link)

# create spell array by parsing corrected URI link object
spells_array = JSON.parse(Net::HTTP.get(spells_uri))

# iterate through spell array and create Spell objects in database
spells_array.each do |spell|
	# check to ensure spell has a name
	if spell["name"]
		# create Spell object
		new_spell = Spell.create(name: spell["name"],
			desc: spell["desc"],
			higher_level: spell["higher_level"],
			page: spell["page"],
			range: spell["range"],
			components: spell["components"],
			material: spell["material"],
			ritual: spell["ritual"],
			duration: spell["duration"],
			concentration: spell["concentration"],
			casting_time: spell["casting_time"],
			level: spell["level"],
			school: spell["school"],
			spell_class: spell["class"],
			archetype: spell["archetype"],
			circles: spell["circles"],
			oaths: spell["oaths"],
			domains: spell["domains"],
			patrons: spell["patrons"])

		# save Spell object
		new_spell.save
	end
end

# CREATE D&D 5E CREATURE DATABASE
# link to D&D 5e Creature JSON by Reddit user droiddruid
creatures_link = 'https://dl.dropboxusercontent.com/s/iwz112i0bxp2n4a/5e-SRD-Monsters.json'

# parse and convert link to URI object
creatures_uri = URI.parse(creatures_link)

# create creature array by parsing corrected URI link object
creatures_array = JSON.parse(Net::HTTP.get(creatures_uri))

# iterate through creatures array and create Creature objects in database with accompanying SpecialAbility, Action, and LegendaryAction objects
creatures_array.each do |creature|
	# check to ensure creature has a name
	if creature["name"]
		# create Creature object
		new_creature = Creature.create(name: creature["name"],
			size: creature["size"],
			creature_type: creature["type"],
			subtype: creature["subtype"],
			armor_class: creature["armor_class"],
			hit_points: creature["hit_points"],
			hit_dice: creature["hit_dice"],
			speed: creature["speed"],
			strength: creature["strength"],
			dexterity: creature["dexterity"],
			constitution: creature["constitution"],
			intelligence: creature["intelligence"],
			wisdom: creature["wisdom"],
			charisma: creature["charisma"],
			constitution_save: creature["constitution_save"],
			intelligence_save: creature["intelligence_save"],
			wisdom_save: creature["wisdom_save"],
			athletics: creature["athletics"],
			acrobatics: creature["acrobatics"],
			stealth: creature["stealth"],
			arcana: creature["arcana"],
			history: creature["history"],
			investigation: creature["investigation"],
			nature: creature["nature"],
			religion: creature["religion"],
			insight: creature["insight"],
			medicine: creature["medicine"],
			perception: creature["perception"],
			survival: creature["survival"],
			deception: creature["deception"],
			intimidation: creature["intimidation"],
			performance: creature["performance"],
			persuasion: creature["persuasion"],
			damage_vulnerabilities: creature["damage_vulnerabilities"],
			damage_resistances: creature["damage_resistances"],
			damage_immunities: creature["damage_immunities"],
			condition_immunities: creature["condition_immunities"],
			senses: creature["senses"],
			languages: creature["languages"],
			challenge_rating: creature["challenge_rating"])

			# save Creature object
			new_creature.save

			# create SpecialAbility objects, if any
			if creature["special_abilities"]
				creature["special_abilities"].each do |special_ability|
					# check to ensure special ability has a name
					if special_ability["name"]
						# create SpecialAbility object
						new_special_ability = SpecialAbility.create(name: special_ability["name"],
							desc: special_ability["desc"],
							attack_bonus: special_ability["attack_bonus"],
							damage_dice: special_ability["damage_dice"],
							damage_bonus: special_ability["damage_bonus"],
							creature_id: new_creature.id)
						# save SpecialAbility object
						new_special_ability.save
					end
				end
			end

			# create Action objects, if any
			if creature["actions"]
				creature["actions"].each do |action|
					# check to ensure action has a name
					if action["name"]
						# create Action object
						new_action = Action.create(name: action["name"],
							desc: action["desc"],
							attack_bonus: action["attack_bonus"],
							damage_dice: action["damage_dice"],
							damage_bonus: action["damage_bonus"],
							creature_id: new_creature.id)
						# save Action object
						new_action.save
					end
				end
			end

			# create LegendaryAction objects, if any
			if creature["legendary_actions"]
				creature["legendary_actions"].each do |legendary_action|
					# check to ensure legendary action has a name
					if legendary_action["name"]
						# create LegendaryAction object
						new_legendary_action = LegendaryAction.create(name: legendary_action["name"],
							desc: legendary_action["desc"],
							attack_bonus: legendary_action["attack_bonus"],
							creature_id: new_creature.id)
						# save LegendaryAction object
						new_legendary_action.save
					end
				end
			end
	end
end
