class IncomingMailsController < ApplicationController
  # GET /incoming_mails
  # GET /incoming_mails.json
  def index
    @incoming_mails = IncomingMail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incoming_mails }
    end
  end

  # GET /incoming_mails/1
  # GET /incoming_mails/1.json
  def show
    @incoming_mail = IncomingMail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incoming_mail }
    end
  end

  # GET /incoming_mails/new
  # GET /incoming_mails/new.json
  def new
    @incoming_mail = IncomingMail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incoming_mail }
    end
  end

  # GET /incoming_mails/1/edit
  def edit
    @incoming_mail = IncomingMail.find(params[:id])
  end

  # POST /incoming_mails
  # POST /incoming_mails.json
  def create
    @incoming_mail = IncomingMail.new(params[:incoming_mail])

    respond_to do |format|
      if @incoming_mail.save
        format.html { redirect_to @incoming_mail, notice: 'Incoming mail was successfully created.' }
        format.json { render json: @incoming_mail, status: :created, location: @incoming_mail }
      else
        format.html { render action: "new" }
        format.json { render json: @incoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incoming_mails/1
  # PUT /incoming_mails/1.json
  def update
    @incoming_mail = IncomingMail.find(params[:id])

    respond_to do |format|
      if @incoming_mail.update_attributes(params[:incoming_mail])
        format.html { redirect_to @incoming_mail, notice: 'Incoming mail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @incoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoming_mails/1
  # DELETE /incoming_mails/1.json
  def destroy
    @incoming_mail = IncomingMail.find(params[:id])
    @incoming_mail.destroy

    respond_to do |format|
      format.html { redirect_to incoming_mails_url }
      format.json { head :ok }
    end
  end
end
