class ContactsController < ApplicationController

  # before_action :authenticate_user!, except: [:new, :confirm, :complete, :create]

  def new
    @contact = Contact.new
  end


  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.contact_mail(@contact).deliver
        redirect_to complete_contacts_path
      else
        render :new
      end
  end

  def complete
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content, :confirming)
  end


end