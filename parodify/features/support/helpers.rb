require "httparty"

module Helpers
  def delorean(email) #interpolação de string.
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
