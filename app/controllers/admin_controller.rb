class AdminController < ApplicationController
  def index
		@total_incoming_mails = IncomingMail.count
		@total_outgoing_mails = OutgoingMail.count
  end

end
