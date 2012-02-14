class GeneratorController < ApplicationController
  def index
		@generator = Generator.new
		respond_to do |format|
			format.html # index.html.erb
		end
  end

  def generate
		@generator = Generator.new(params[:generator])
		if @generator.valid?
			respond_to do |format|
				@last_id = OutgoingMail.last
				@number = Generator.submit(params[:generator][:code],params[:generator][:division],@last_id)
				format.html
			end
		else
			respond_to do |format|
				format.html { render action: "index" }
			end
		end
  end

end
