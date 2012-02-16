class Division < ActiveRecord::Base
	validates :code, :presence =>{:message => "wajib"}
end
