class Player

	attr_reader :choice

	# same as 
	# def choice
	# 	@choice
	# end
	attr_accessor :name

	# same as what?
	# def choice
	# 	@choice
	# end
	def initialize(name = nil)
		@name = name
	end

	def choose(selection)
		@choice = selection.downcase.to_sym
	end

end