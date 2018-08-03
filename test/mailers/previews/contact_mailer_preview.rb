# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/name:string
  def name:string
    ContactMailer.name:string
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/email:string
  def email:string
    ContactMailer.email:string
  end

end
