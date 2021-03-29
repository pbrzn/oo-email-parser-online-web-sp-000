# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :all_emails
  
  def initialize(email_addresses)
    @all_emails = email_addresses
  end
  
  def parse
    email_array = @all_emails.split(/,|\s|[, ]/)
    email_array.delete_if {|email| email==""}
    email_array.uniq
  end
end