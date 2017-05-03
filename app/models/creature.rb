class Creature < ApplicationRecord
	has_many :special_abilities
	has_many :actions
	has_many :legendary_actions
end
