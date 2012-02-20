require 'digest/sha2'
class User < ActiveRecord::Base
	attr_accessor :password
	attr_reader		:password
	validates :name, :presence=>true, :uniqueness=>true
	validates :password, :confirmation=>true
	validate :password_must_be_present
	before_save :encrypt_password
	private
		def password_must_be_present
			errors.add(:password, "Missing password") unless hashed_password.present?
		end

	def User.encrypt_password(password, salt)
		Digest::SHA2.hexdiggest(password+"fileMail"+salt)
	end

	def generate_salt
		self.salt = self.object_id.to_s + rand.to_s
	end

	def password=(password)
		@password = password

		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password,salt)
		end
	end

	def User.authenticate(name,password)
		if user=find_by_name(name)
			if user.hashed_password == encrypt_password(password, user.salt)
				user
			end
		end
	end
end