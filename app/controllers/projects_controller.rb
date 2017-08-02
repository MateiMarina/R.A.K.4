class ProjectsController < ApplicationController
    
            # creating a class of entry objects
            class Entry
              def initialize(title,water_depth,project_summary,p_resource,production)
                @title = title
                @water_depth = water_depth
                @p_resource = p_resource
                @production = production
                @project_summary = project_summary
              end
                attr_reader :title          #reading @title through it instance variable
                attr_reader :water_depth
                attr_reader :p_resource
                attr_reader :production
                attr_reader :project_summary 
            end
            
            
         
            def index
                @projects = Project.all.paginate(page: params[:page])  # displaying all records in the project table
                require 'open-uri'       # require open uri in order to open the  webpage
                require 'nokogiri'       # require nokogiri to parse the webpage in the doc variable
               
               
                #parsing the webpage to doc variable
                doc = Nokogiri::HTML(open("https://itportal.ogauthority.co.uk/eng/fox/path/PATH_REPORTS/current-projects"))
                entries = doc.css('.operator-container') # a parent css class 
                      @entriesArray = []   # making an empty array to hold all the entry objects
                      entries.each do |row|
                  
                  
                          title = row.css('.field-header').text    #reading specific data using css selectors
                          water_depth = row.css('td')[7].text
                          p_resource = row.css('td')[5].text
                          production = row.css('td')[8].text
                          project_summary = row.css('span').text
                        
                        
                          Project.create(                #saving the scraped data into the project table
                          project_title: title,
                          water_depth_m:  water_depth,
                          resource:  p_resource,
                          estimated_first_production:  production ,
                          about_project: project_summary)
                
                     @entriesArray << Entry.new(title,water_depth,project_summary,p_resource,production)
                    end
                 
            end
            
            
            
            #displaying single record in the project table
            def show
              @projects = Project.find(params[:id])
            end
            
            
            
            
             #display a project form
            def new
               @projects = Project.new
            end
            
            
            
            
             # saving data into the project table
            def create
                   @projects= Project.new(add_project)
                if   @projects.save
                    flash[:success] = "A record has been successfully added"
                redirect_to projects_path
                else
                  render 'new'
                end
            end
        
        
        
        
                #strong parameters
            def add_project
               params.require(:project).permit(:project_title, :about_project, :resource, :project_status, :estimated_first_production, :water_depth_m, :capex_usd, :distance_to_shore, :development_concept)
            end
            
            
              # editing a particular data in the project table
            def edit
                @projects = Project.find(params[:id])
            end
            
            
            
            
             #upadate the  project table 
              def update
                @projects = Project.find(params[:id])
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
                flash[:success] = "A record has been successfully deleted"
                redirect_to projects_path
         
            end 
            
end
