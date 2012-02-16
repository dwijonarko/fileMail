class Generator
	include ActiveModel::Validations
	include ActiveModel::Conversion
	include ActiveModel::Naming

	attr_accessor :code, :division

	validates :code,:division, :presence =>{:message => "wajib"}

	def initialize(attributes={})
		attributes.each do |name,value|
			send("#{name}=",value)
		end
	end

	def persisted?
		false
	end

	def self.submit(code,division)
		time = Time.new
		last_id = OutgoingMail.last[:code].split("/")[0]
		last_year = OutgoingMail.last[:code].split("/")[4].split(".")[1]
		next_id = (last_id.to_i+1).to_s.rjust(3,'0')
		last_year==time.year.to_s ? next_id : next_id="001"

		@number = next_id+"/POLTEKOM/"+division.to_s+"/"+code.to_s+"/"+time.month.to_s+"."+time.year.to_s

	end

end
