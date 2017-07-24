class ProjectsController < ApplicationController
    
    def index
        @projects=Project.all
    
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
        flash[:success] = "A record has been successfully deleted"
    redirect_to projects_path
    else
      render 'new'
    end
    end

        #strong parameters
    def add_project
     params.require(:project).permit(:project_title, :about_project, :resource, :project_status, :estimated_first_production, :water_depth_m, :capex_usd, :distance_to_shore, :development_concept)
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
    flash[:success] = "A record has been successfully deleted"
    redirect_to projects_path
 
    end 
    
end
