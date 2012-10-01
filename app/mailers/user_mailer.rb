class UserMailer < ActionMailer::Base

  default :from => "support@fidbacks.com"
  
  def registration_confirmation(user)
   @user = user
  mail(:to => user.email, :subject => "Fidbacks | Invitation to the beta test")
 end 
  
end



#      def registration_confirmation(user)
#        recipients user.email
#       from "samuelmanasse@gmail.com>"
#       subject "Bienvenue !"
#       body :user => user, :account_url => edit_user_url(user)
#     end
#end
