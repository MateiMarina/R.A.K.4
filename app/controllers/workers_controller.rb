class WorkersController < ApplicationController
    def index
    @workers=Worker.all 
    end
            
            
    def show
   
    end
          #display form 
    def new
       @workers=Worker.new
    end
         #creating new comany record
    def create
       @workers=Worker.new(my_worker)
    if   @workers.save
        flash[:success] = "A record has been succefully deleted"
    redirect_to workers_path
    else
      render 'new'
    end
    end

        #strong parameters
    def my_worker
    params.require(:worker).permit(:people_id, :full_name, :classification, :company_type, :ak_notes, :current_company, :current_country)
           #deleting a record
    end
    
     def edit
        @workers=Worker.find(params[:id])
      end
     #upadat user  
      def update
        @workers=Worker.find(params[:id])
        if @workers.update_attributes(my_worker)
           flash[:success] = "People form updated"
           redirect_to workers_path
        else
          render'edit'
        end
      end
    
    
    
    
    def destroy
    Worker.find(params[:id]).destroy
    flash[:success] = "A record has been succefully deleted"
    redirect_to workers_path
 
    end 
end
