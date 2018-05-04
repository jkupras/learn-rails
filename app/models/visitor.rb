class Visitor < ApplicationRecord
  validates_presence_of :email
  def subscribe
    #mailchimp = Gibbon::API.new
    mailchimp = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    result = mailchimp.lists.subscribe({
      :id => ENV['MAILCHIMP_LIST_ID'],
      :email => {:email => self.email},
      :double_option => false,
      :update_existing => true,
      :send_welcom =>true
      })
    Rails.logger.info("Subscribed #{self.email} to MailChimp" ) if result
  end
end
