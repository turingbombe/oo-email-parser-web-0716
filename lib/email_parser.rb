# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
    attr_accessor :email_array
    def initialize(email)
        @email_list = email
    end

    def parse
        #binding.pry
        @email_array = @email_list.split(/[\s|,]/)
        test_duplicates(email_array)
    end 

    def test_duplicates(array)
        array.delete("")
        array.uniq
    end

end

