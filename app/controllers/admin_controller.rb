class AdminController < ApplicationController
  def index
		@total_incoming_mails = IncomingMail.count
		@total_outgoing_mails = OutgoingMail.count
		@incoming_mails = IncomingMail.all
		@outgoing_mails = OutgoingMail.all
  end

end
