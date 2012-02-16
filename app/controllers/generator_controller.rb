class GeneratorController < ApplicationController
  def index
		@generator = Generator.new
		respond_to do |format|
			format.html # index.html.erb
		end
  end

  def generate
		@generator = Generator.new(params['form_data'])
		if @generator.valid?
				@number = Generator.submit(params['form_data']['code'],params['form_data']['division'])
				render :text => @number.to_s
		else
				render :text=> "Isi field terlebih dahulu"
		end
  end

end
