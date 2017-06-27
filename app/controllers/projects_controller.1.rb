class ProjectsController < ApplicationController

    
    class Entry
      def initialize(title,link)
        @title = title
        @link = link
      end
      attr_reader :title
      attr_reader :link
    end
      
     
  
     def index
        @projects=Project.all
        require 'open-uri'
        require 'nokogiri'
        doc = Nokogiri::HTML(open("https://itportal.decc.gov.uk/pathfinder/currentprojectsindex.html"))
      
       #@title = doc.css("div.row a").text
        entries = doc.css('.operator-container')
        @entriesArray = []
        entries.each do |row|
       title = row.css('tr').text
       link = row.css('a')[0]['href']
        @entriesArray << Entry.new(title,link)
    
       end
 
     end 
    
            
    def show
   
    end
          #display form 
    def new
       @projects=Project.new
    end
         #creating new comany record
    def create
       @projects=Project.new(add_project)
    if   @projects.save
        flash[:success] = "A record has been succefully deleted"
    redirect_to projects_path
    else
      render 'new'
    end
    end

        #strong parameters
    def add_project
     params.require(:project).permit(:project_id, :project_title, :about_project, :resource, :status, :estimated_first_production, :country, :region, :water_depth_m, :capex_usd, :distance_to_shore, :development_concept)
    end
     #deleting a record
    def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "A record has been succefully deleted"
    redirect_to projects_path
 
    end 
    
end
