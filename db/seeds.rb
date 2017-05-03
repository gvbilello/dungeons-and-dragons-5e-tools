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

	end
end
