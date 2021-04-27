require 'semaphore'
$stdout.reopen("log3.txt", "w")
class RWControl
	def initialize
		@can_right = Semaphore.new
		@can_left = Semaphore.new
		@num_right = 0
		@num_left = 0
		@is_right = false
		@is_left = false
		@q_left = 0
		@q_right = 0
		@is_prior = false
		super()
	end
	def begin_right
			if @is_left
				@q_right += 1
				@is_prior = true
				puts Thread.current.to_s + "tried ==>, but now <==, so wait " + @num_left.to_s + " babuins to finish <=="
				@can_right.down!
			end
			@num_right += 1
			@can_right.up!
			@is_right = true
			puts Thread.current.to_s + "tried ==>, success"
	end
	def end_right
			@num_right -= 1
			if @num_right == 0
				@is_right = false
				@is_prior = false
				if @q_left > 0
					@can_left.up!
					@q_left = 0
					puts Thread.current.to_s + "finished ==>, now <=="
				else
					puts Thread.current.to_s + "finished ==>, now <==>"
				end
			else
				puts Thread.current.to_s + "finished ==>, now ==>"
			end
	end
	def begin_left
			if @is_right
				@q_left += 1
				puts Thread.current.to_s + "tried <==, but now ==>"
				@can_left.down!
			elsif @is_prior
				@q_left+=1
				puts Thread.current.to_s + "tried <==, but now priority wants to go ==>"
				@can_left.down!
			end
			if @is_prior==false
                @num_left += 1
                @can_left.up!
                @is_left = true
                puts Thread.current.to_s + "tried <==, success"
            end
	end
	def end_left
			@num_left -= 1
			if @num_left == 0
				@is_left = false
				if @q_right > 0
					@can_right.up!
					@q_right = 0
					puts Thread.current.to_s + "finished <==, now ==>"
				else
					puts Thread.current.to_s + "finished <==, now <==>"
				end
			else
				puts Thread.current.to_s + "finished <==, now <=="
			end
	end
end
m = RWControl.new
50.times do
	Thread.new do
		sleep rand * 5
		m.begin_right
		sleep rand
		m.end_right
	end
end
50.times do
	Thread.new do
		sleep rand * 2
		m.begin_left
		sleep rand * 2
		m.end_left
	end
end
Thread.list.each { |t| t.join unless t == Thread.main }
