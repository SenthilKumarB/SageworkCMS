class UserMailer < ActionMailer::Base
  # default :from => "senthilexample@gmail.com"

  def contact_email(contact_email)
  	 @contact_email = contact_email
     mail(:to => "senthilexample@gmail.com", :from => contact_email[:email],  :subject => "Conatct-Inquiry (#{contact_email[:name]})")
   end
end
