class OutgoingMail < ActiveRecord::Base
	validates :code, :from, :to, :concern, :date, :presence =>{:message => "wajib"}
	validates :code, :uniqueness => { :message => "Data sudah ada" }

	has_attached_file :attachment
	attr_protected :attachment_file_name, :attachment_content_type
end
