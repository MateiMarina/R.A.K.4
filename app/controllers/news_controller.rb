class NewsController < ApplicationController


  
    
    
     class Entry
      def initialize(title,link)
        @title = title
        @link = link
      end
      attr_reader :title
      attr_reader :link
     end
      
     
  
     def index
        require 'open-uri'
        require 'nokogiri'
        doc = Nokogiri::HTML(open("http://www.offshoreenergytoday.com/"))
      
       #@title = doc.css("div.row a").text
        entries = doc.css('.block')
        @entriesArray = []
        entries.each do |row|
        title = row.css('a').text
        link = row.css('a')[0]['href']
        @entriesArray << Entry.new(title,link)
       end

    
     end	


end
