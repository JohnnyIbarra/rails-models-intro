class Contact < ApplicationRecord
		# ASSOCIATIONS
		has_many :notes, dependent: :destroy
		has_one :address, dependent: :destroy


		# ASSOCIATIONS
		# BELONGS_TO
		# HAS_MANY
		# HAS_ONE
		
		# HAS_MANY :THROUGH
		# HAS_MANY :THROUGH

		# DEPENDENT


		# VALIDATIONS
		# CONFIRMATION - IT SHOULD HAVE EXACTLY A CERTAIN THING ()
		# INCLUSION - INCLUDES SOMETHING
		# LENGTH - HAVE A CERTAIN SIZE
		# NUMERICALITY - MAKES SURE THAT INPUT IS A NUMBER
		# PRESENCE - MAKES SURE THE FILED IS FILLED OUT 
		#validates :first_name, :last_name, :age, :phone, :email, :friend, presence: true
		# UNIQUENESS - ACCEPT UNIQUENESS
		#validates :email, uniqueness: true 


		# OPTIONS
			# ALLOW_NIL
				# - ALLOW NIL AS A VALUE
				# Contact.create(first_name: nil)

				#class Coffe < ActiveRecord::Base
				#	validates :size, inclusion: {
				#		in: %w(small medium large),
				#		message: "%{value} is not a valid size",
				#		allow_nil: true
				#	}

			# ALLOW_BLANK
					# - ''
			# MESSAGE
					# additonal output
			# ON 
			# where we want to do our validations
			#validates :email, uniqueness: true, on: :create
			validates :age, numericality: true, on: :update
			# on: :save
			
		# CALLBACK
		# CALLS A METHOD DURING A CERTAIN ACTION

					#	before_validation
					#	after_validation
					#	before_save
					#	after_save
					#	around_save
					#	before_create
					#	after_create
					#	around_create

					#before_save :encrypt_cc

					#private
					#	def encrypt_cc
					#		self.card_number = bcrypt(self.card_number)
					#	end

	# SERIALIZE
	# LETS US HAVE MORE THAN ONE VALUE FOR A COLUMN IN AN ARRAY
	#	class Person < ActiveRecord::Base
	#		belongs_to :account
	#		serialize :hobbies, Array
	#	end
	#	Person.create(hobbies: ['kitchen', 'sports', 'chess'])

	# MODEL METHODS

	#CLASS

	#class Person > ActiveRecord::Base
			#def self.by_first_name
				#order(:first_name)
			#end
		#end

		# INSTANCE
			#class Person > ActiveRecord::Base
			#def print_full_name
				#"#{self.first_name} #{self.last_name}"
			#end
		#end

		#bob = Person.create(...)
		#bob.print_full_name


end
