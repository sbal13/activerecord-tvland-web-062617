class Show < ActiveRecord::Base
	belongs_to :network
	has_many :characters
	has_many :actors, through: :characters

	def build_network(hash)
		new_network = Network.new(hash)
		new_network.shows << self
	end
  
end