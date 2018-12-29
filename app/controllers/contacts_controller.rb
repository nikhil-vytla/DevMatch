class ContactsController < ApplicationController
  def new
    @contact = Contact.new # Creates a new Contact and stores it in the instance variable [@contact]
  end
  def create # By default, Rails uses the create action to save to a db
    @contact = Contact.new(contact_params) # Mass assignment (assigning multiple values simultaneously to the attributes of the object) {name: 'asdf', email: 'asdf', comments: 'asdf'}
    if @contact.save
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      flash[:error] = @contact.errors.full_messages.join(", ")
      # Errors is a flash hash that contains key-value pairs consisting of errors, and we access it by calling the hash and displaying it.
      redirect_to new_contact_path
    end
  end
  private
    def contact_params # Strong parameters used for security in Rails to assign content within text fields to the variables
      params.require(:contact).permit(:name, :email, :comments)
    end
end

# rails console to cd into the Rails console
# Contact.all show all information located within the Contact database
# exit to exit the Rails console