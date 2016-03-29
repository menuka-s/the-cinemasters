class Invitation < ActiveRecord::Base
	belongs_to :critic

	before_save :make_code

	def make_code
		self.code = SecureRandom.hex(3)
	end


end
