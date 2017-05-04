class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
	end

	def show
		@creature = Creature.find(params[:id])
	end
	
end