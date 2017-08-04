class EmployeesController < ApplicationController
        
        #showing all record in the comploey table
        def index
           @workers = Employee.all.paginate(page: params[:page], :per_page => 70) 
        end
                
             
         #display a single record from the employee table      
        def show
          @workers = Employee.find(params[:id])
        end
        
        
         
         #display the employee form 
        def new
            @workers  = Employee.new
        end
        
        
        
         #saving a new employee a record 
        def create
           @workers = Employee.new(my_worker)
        if   @workers.save
            flash[:success] = "A record has been successfully added"
        redirect_to employees_path
        else
          render 'new'
        end
        end
    
        
          #strong parameters
        def my_worker
            params.require(:employee).permit(:full_name, :current_company, :country, :position, :ak_notes, :classification,   )
              
        end
        
        
        
          #edit employee table 
         def edit
            @workers = Employee.find(params[:id])
            
         end
         
         
         
         #upadat the employe table 
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
