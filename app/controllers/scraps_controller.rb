class ScrapsController < ApplicationController
   
    class Entry
      def initialize(title,link,days)
        @title = title
        @link = link
        @days = days
      end
      attr_reader :title
      attr_reader :link
      attr_reader :days
    end
      
     
  
     def index
        @scrap = Scrap.paginate(page: params[:page] , :per_page => 5)

        require 'open-uri'
        require 'nokogiri'
        doc = Nokogiri::HTML(open("http://www.offshoreenergytoday.com/"))
        subsea = Nokogiri::HTML(open("http://subseaworldnews.com/"))
       #@title = doc.css("div.row a").text
        entries = doc.css('.block')
        @entriesArray = []
        entries.each do |row|
            #Scrap.create!(
                 title = row.css('h2>a').text
                 link = row.css('a')[0]['href']
                 days =row.css('time').text
        @entriesArray << Entry.new(title,link,days)
    
       end
       
       
       entries = subsea.css('.block')
        @entries = []
        entries.each do |row|
            #Scrap.create!(
                title = row.css('h2> a').text
                link = row.css('a')[0]['href']
                days = row.css('time').text
        @entries << Entry.new(title,link,days)
     end 
     end

   
end
