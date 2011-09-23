# This code uses Meta Programming Concept
# to make every key of a Hash Object a
# variable of the Hash Object available using
# attribute accessor method.


class Hash

# Called every time a Hash object is initialized
	def initialize(hash)
	
		# Creates a variable using the Keys and Values of a Hash
		hash.each do |key, value|
		
			self.class.class_eval "attr_accessor :#{key}"
			self.instance_variable_set("@#{key}", value)
			
		end

	end

end

h = Hash.new :a => 1, :b => 2
p h.a

#Output:
# 1
