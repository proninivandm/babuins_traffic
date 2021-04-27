require 'monitor'
$stdout.reopen("log.txt", "w")
class RWControl
	include MonitorMixin
	def initialize
		@can_right = new_cond
		@can_left = new_cond
		@num_right = 0
		@num_left = 0
		@is_right = false
		@is_left = false
		@q_left = 0
		@q_right = 0
		super()
	end
	def begin_right
		synchronize do
			if @is_left
				@q_right += 1
				puts Thread.current.to_s + "tried ==>, but now <=="
				@can_right.wait
			end
			@num_right += 1
			@can_right.signal
			@is_right = true
			puts Thread.current.to_s + "tried ==>, success"
		end
	end
	def end_right
		synchronize do
			@num_right -= 1
			if @num_right == 0
				@is_right = false
				if @q_left > 0
					@can_left.broadcast
					@q_left = 0
					puts Thread.current.to_s + "finished ==>, now <=="
				else
					puts Thread.current.to_s + "finished ==>, now <==>"
				end
			else
				puts Thread.current.to_s + "finished ==>, now ==>"
			end
		end
	end
	def begin_left
		synchronize do
			if @is_right
				@q_left += 1
				puts Thread.current.to_s + "tried <==, but now ==>"
				@can_left.wait
			end
			@num_left += 1
			@can_left.signal
			@is_left = true
			puts Thread.current.to_s + "tried <==, success"
		end
	end
	def end_left
		synchronize do
			@num_left -= 1
			if @num_left == 0
				@is_left = false
				if @q_right > 0
					@can_right.broadcast
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
end
m = RWControl.new
50.times do
	Thread.new do
		sleep rand * 2
		m.begin_right
		sleep rand * 2
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
