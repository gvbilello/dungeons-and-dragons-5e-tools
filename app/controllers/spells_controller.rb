class SpellsController < ApplicationController

	def show
		@spell = Spell.find(params[:id])
	end

end