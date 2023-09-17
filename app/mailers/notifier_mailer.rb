class NotifierMailer < ApplicationMailer
    def new_feedback(recipient)
        @user = params[:user]
        mail(
          to: recipient,
          subject: "New Feedback",
        )
    end

    def new_feedback_no_email()
        mail(
          to: "notice@sample.com",
          subject: "New Feedback w/o email",
        )
    end
end
