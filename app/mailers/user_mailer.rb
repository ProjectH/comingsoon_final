class UserMailer < ActionMailer::Base

  default :from => "support@fidbacks.com"
  
  def comingsoon_registration(user)
   #@user = user
   #attention bien comprendre si on a dejà écrit dans la database
   mail(:to => user.contact, :subject => "Fidbacks | Invitation to the beta test")
 end 
  
end



#      def registration_confirmation(user)
#        recipients user.email
#       from "samuelmanasse@gmail.com>"
#       subject "Bienvenue !"
#       body :user => user, :account_url => edit_user_url(user)
#     end
#end
