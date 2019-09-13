class Contact < MailForm::Base
	attribute :first_name, :validate => true
	attribute :last_name, :validate => true
	attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :subject
	attribute :message, :validate => true
	attribute :nickname, :captcha => true

	def name
		"#{first_name.capitalize} #{last_name.capitalize}"
	end



	def headers 
		{
			:subject => "Contact Form",
			:to => "maura.mendes.baptista@gmail.com",
			:from => %("#{name}" <#{email}>)
		}
	end
end