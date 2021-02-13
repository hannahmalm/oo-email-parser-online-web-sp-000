require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted class EmailAddressParser
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#the class is what is responsible for the parsing - develop a class parser method 

class EmailAddressParser
  #create an array to hold the list of emails in the files
   email_list = []
   attr_accessor :emails
   
   #:emails is the same thing as @emails 
   #initialize after each email is added to the list 
   #email_addresses is the list of data in the csv 
    def initialize(email_addresses)
      @emails = email_addresses
    end 

    #Begin parsing using a CLASS method - the CLASS is responsible for parsing, not each individual instance email 
    def parse
          #split the CSV data into an array of individual rows
      rows = @emails.split('\n')
          #for each row, collect an email instance based on the data
      emails = rows.collect do |row|
          #split the row using CSV OR Whitespace “,”
      data = @emails.split("/,/") || @emails.split(" ").collect {|i| i}.join("")
      # #I want to iterate over the list of email_addresses and return only unique emails 
       @emails.to_a.uniq { |email_addresses| email_addresses[:emails] }

    end 
end 
end 

