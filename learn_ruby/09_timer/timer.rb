class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		second = @seconds % 60
		minute = (@seconds % 3600) / 60
		hour = (@seconds / 3600) % 60
		sprintf("%02d:%02d:%02d", hour, minute, second)
	end

end

