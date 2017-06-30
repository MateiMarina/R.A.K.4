class ProjectsController < ApplicationController

    
      
    class Entry
      def initialize(title,water_depth,location,fproduction,production)
        @title = title
        @water_depth = water_depth
        @location = location
        @fproduction = fproduction
         @production = production
         
      end
        attr_reader :title
        attr_reader :water_depth
        attr_reader :location
        attr_reader :fproduction
         attr_reader :production
         
    end
 
 
     def index
        @projects=Project.all
        require 'open-uri'
        require 'nokogiri'
        doc = Nokogiri::HTML(open("https://itportal.ogauthority.co.uk/eng/fox/path/PATH_REPORTS/current-projects"))
        entries = doc.css('.operator-container')
        @entriesArray = []
        entries.each do |row|
        title=row.css('.operator-header').text
        #title=row.css('.field-header').text
        water_depth=row.css('td')[7].text
        location =row.css('td')[6].text
        fproduction=row.css('td')[5].text
        production=row.css('td')[8].text
        
        @entriesArray << Entry.new(title,water_depth,location,fproduction,production)
       end
         
     end
    
 
            
    def show
      @projects=Project.find(params[:id])
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
    
    def edit
        @projects=Project.find(params[:id])
    end
     #upadat user  
      def update
        @projects=Project.find(params[:id])
        if @projects.update_attributes(add_project)
           flash[:success] = "Project Form updated"
           redirect_to projects_path
        else
            render'edit'
        end
      end
    
     #deleting a record
    def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "A record has been succefully deleted"
    redirect_to projects_path
 
    end 
    
end