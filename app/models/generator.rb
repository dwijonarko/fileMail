class Generator
	include ActiveModel::Validations
	include ActiveModel::Serialization
	include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_accessor :code, :division

	validates :code,:division, :presence =>{:message => "wajib"}

	def initialize(attributes = {})
    @generator = attributes
  end

	def read_attribute_for_validation(key)
	  @generator[key]
	end

	def persisted?
		false
	end

	def self.submit(code,division,last_id)
		time = Time.new
		@number = last_id[:code]
		#@number = "123/POLTEKOM/"+division.to_s+"/"+code.to_s+"/"+time.month.to_s+"."+time.year.to_s
	end

end
