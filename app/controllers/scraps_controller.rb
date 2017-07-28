class ScrapsController < ApplicationController
  
   class Entry
      
      def initialize(title1,link1,days1)
        @title = title1
        @link = link1
        @days = days1
      end
      attr_reader :title1
      attr_reader :link1
      attr_reader :days1
   end
   
     def index
        @scraps = Scrap.all.paginate(page: params[:page])

        require 'open-uri'
        require 'nokogiri'
        doc = Nokogiri::HTML(open("http://www.offshoreenergytoday.com/"))
        subsea = Nokogiri::HTML(open("http://subseaworldnews.com/"))
      #@title = doc.css("div.row a").text
        entries = doc.css('.block')
        @entriesArray = []
        entries.each do |row|
            
               title1 = row.css('h2>a').text
               link1 = row.css('a')[0]['href']
               days1 = row.css('time').text
        
        Scrap.create(                  
         title: title1,
         link: link1,
         day: days1)
        
        
        @entriesArray << Entry.new(title1,link1,days1)
    
      end
       
       
      entries = subsea.css('.block')
        @entries = []
        entries.each do |row|
            
         title1 = row.css('h2> a').text
         link1 = row.css('a')[0]['href']
         days1 = row.css('time').text
         
       Scrap.create(                  
         title: title1,
         link: link1,
         day: days1)
        @entries << Entry.new(title1,link1,days1)
     end 
     end


end
