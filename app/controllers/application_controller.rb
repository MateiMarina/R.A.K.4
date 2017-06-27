class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  
    class Entry
    def initialize(title, link)
      @title = title
      @link = link
    end
    attr_reader :title
    attr_reader :link
    end
  
    def scrapthat now_project
        require 'open-uri'
        doc = Nokogiri::HTML(open("https://itportal.decc.gov.uk/pathfinder/currentprojectsindex.html"))
    
        entries = doc.css('.operator-container')
        @entriesArray = []
        entries.each do |entry|
          title = entry.css('div.operator-header>a').text
          link = entry.css('p.title>a')[0]['href']
          @entriesArray << Entry.new(title, link)
        end
        
    end

end
