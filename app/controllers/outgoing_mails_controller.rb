class OutgoingMailsController < ApplicationController
  # GET /outgoing_mails
  # GET /outgoing_mails.json
  def index
    @outgoing_mails = OutgoingMail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outgoing_mails }
    end
  end

  # GET /outgoing_mails/1
  # GET /outgoing_mails/1.json
  def show
    @outgoing_mail = OutgoingMail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outgoing_mail }
    end
  end

  # GET /outgoing_mails/new
  # GET /outgoing_mails/new.json
  def new
    @outgoing_mail = OutgoingMail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outgoing_mail }
    end
  end

  # GET /outgoing_mails/1/edit
  def edit
    @outgoing_mail = OutgoingMail.find(params[:id])
  end

  # POST /outgoing_mails
  # POST /outgoing_mails.json
  def create
    @outgoing_mail = OutgoingMail.new(params[:outgoing_mail])

    respond_to do |format|
      if @outgoing_mail.save
        format.html { redirect_to @outgoing_mail, notice: 'Outgoing mail was successfully created.' }
        format.json { render json: @outgoing_mail, status: :created, location: @outgoing_mail }
      else
        format.html { render action: "new" }
        format.json { render json: @outgoing_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outgoing_mails/1
  # PUT /outgoing_mails/1.json
  def update
    @outgoing_mail = OutgoingMail.find(params[:id])

    respond_to do |format|
      if @outgoing_mail.update_attributes(params[:outgoing_mail])
        format.html { redirect_to @outgoing_mail, notice: 'Outgoing mail was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @outgoing_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outgoing_mails/1
  # DELETE /outgoing_mails/1.json
  def destroy
    @outgoing_mail = OutgoingMail.find(params[:id])
    @outgoing_mail.destroy

    respond_to do |format|
      format.html { redirect_to outgoing_mails_url }
      format.json { head :ok }
    end
  end
end
