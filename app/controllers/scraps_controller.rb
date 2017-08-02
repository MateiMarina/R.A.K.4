class ScrapsController < ApplicationController
  
  
      # creating a class of entry objects
       class Entry
          
          def initialize(title1,link1,days1)
            @title = title1
            @link = link1
            @days = days1
          end
          attr_reader :title1  #reading @title1 through it instance variable
          attr_reader :link1
          attr_reader :days1
       end
       
         def index
            @scraps = Scrap.all.paginate(page: params[:page])
    
            require 'open-uri'   # require open uri in order to open the  webpage
            require 'nokogiri'   # require nokogiri to parse the webpage in the doc variable
            
            #parsing the webpage to doc  and subsea variable
            doc = Nokogiri::HTML(open("http://www.offshoreenergytoday.com/"))
            subsea = Nokogiri::HTML(open("http://subseaworldnews.com/"))
         
            entries = doc.css('.block')  # a parent css class 
            @entriesArray = []
            entries.each do |row|
                
                  #reading specific data using css selectors
                   title1 = row.css('h2>a').text  
                   link1 = row.css('a')[0]['href']
                   days1 = row.css('time').text
            
            Scrap.create(        #saving the scraped data into the scrap(new) table
             title: title1,
             link: link1,
             day: days1)
            
            
            @entriesArray << Entry.new(title1,link1,days1)
        
          end
           
           
          entries = subsea.css('.block')  # a parent css class 
            @entries = []
            entries.each do |row|
              #reading specific data using css selectors    
             title1 = row.css('h2> a').text  
             link1 = row.css('a')[0]['href']
             days1 = row.css('time').text
             
           Scrap.create(     #saving the scraped data into the scrap(new) table     
             title: title1,
             link: link1,
             day: days1)
            @entries << Entry.new(title1,link1,days1)
         end 
         end


end
