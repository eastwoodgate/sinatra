require 'csv'


class Gossip

attr_reader :content ,:author


  def initialize(author, content)
   
   @author = author
   @content = content
   @gossips_array = []

  end



  def save

   
   CSV.open("../lib/gossip.csv", "ab") do |csv|

    csv << [@author, @content]

    end


  end

  

  def get_array

   return @gossips_array

  end


end






