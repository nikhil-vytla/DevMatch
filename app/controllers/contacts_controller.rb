class ContactsController < ApplicationController
  
  #  GET request to /contact-us
  # Show new contact form 
  def new
    @contact = Contact.new # Creates a new Contact and stores it in the instance variable [@contact]
  end
  # POST request to /contacts
  def create # By default, Rails uses the create action to save to a db
    @contact = Contact.new(contact_params) # Mass assignment of form fields to contact object (assigning multiple values simultaneously to the attributes of the object) {name: 'asdf', email: 'asdf', comments: 'asdf'}
    if @contact.save # Save the Contact object to the database
      name = params[:contact][:name] # Store form fields via parameters into variables
      email = params[:contact][:email] # Able to access nested hash (ex. params = { contact {name: John Doe, email: asdf@asdf.com, commments: "asdfasdf"} })
      body = params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver
      flash[:success] = "Message sent." # Store success message in flash hash and redirect to the new action
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      # If Contact object doesn't save, store errors in flash hash and redirect to the new action
      # Errors is a flash hash that contains key-value pairs consisting of errors, and we access it by calling the hash and displaying it
      redirect_to new_contact_path
    end
  end
  private
    def contact_params # Strong parameters used for security in Rails to assign content within text fields to the variables and whitelist form fields
      params.require(:contact).permit(:name, :email, :comments)
    end
end

# rails console to cd into the Rails console
# Contact.all show all information located within the Contact database
# exit to exit the Rails console