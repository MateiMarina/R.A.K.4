class EmployeesController < ApplicationController
    def index
    @workers = Employee.all 
    end
            
            
    def show
     @workers = Employee.find(params[:id])
    end
          #display form 
    def new
       @workers  = Employee.new
    end
         #creating new comany record
    def create
       @workers = Employee.new(my_worker)
    if   @workers.save
        flash[:success] = "A record has been successfully deleted"
    redirect_to employees_path
    else
      render 'new'
    end
    end

    
      #strong parameters
    def my_worker
    params.require(:employee).permit(:full_name, :current_company, :country, :position, :ak_notes, :classification,   )
          
    end
    
    
      # edit   employee form 
     def edit
        @workers = Employee.find(params[:id])
     end
     #upadat user 
     
     def update
        @workers = Employee.find(params[:id])
        if @workers.update_attributes(my_worker)
           flash[:success] = "People form updated"
           redirect_to employees_path
        else
          render'edit'
        end
     end
    
    
    
      # delete a particular employee form 
    def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "A record has been successfully deleted"
    redirect_to employees_path
 
    end 
    
end
