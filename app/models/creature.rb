class Creature < ApplicationRecord
	has_many :special_abilities
	has_many :actions
	has_many :legendary_actions

	def has_skills?
		return true if self.athletics || self.acrobatics || self.stealth || self.arcana || self.history || self.investigation || self.nature || self.religion || self.insight || self.medicine || self.perception || self.survival || self.deception || self.intimidation || self.performance || self.persuasion
	end

	def has_saving_throws?
		return true if self.constitution_save || self.intelligence_save || self.wisdom_save
	end

	def has_damage_modifiers?
		return true if self.damage_vulnerabilities.length > 0 || self.damage_resistances.length > 0 || self.damage_immunities.length > 0 || self.condition_immunities.length > 0
	end
end
