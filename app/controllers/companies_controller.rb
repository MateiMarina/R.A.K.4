class CompaniesController < ApplicationController
    
       
  #showing all user
    def index
    @company = Company.all 
    end
            
            
    def show
    @comanay = Company.find(params[:id])
    end
          #display form 
    def new
    @company = Company.new
    end
         #creating new comany record
    def create
     @company = Company.new(comy)
    if  @company.save
        flash[:success] = "A record has been successfully deleted"
    redirect_to locations_path
    else
      render 'new'
    end
    end

        #strong parameters
    def comy
    params.require(:company).permit(:company_name, :company_type)
    end
    
    
     def edit
        @company = Company.find(params[:id])
     end
     
     
     #upadat user  
      def update
        @company = Company.find(params[:id])
        if  @location.update_attributes(located)
           flash[:success] = "Location form updated"
           redirect_to locations_path
        else
            render'edit'
        end
      end

    #deleting a record
    def destroy
    Company.find(params[:id]).destroy
    flash[:success] = "A record has been successfully deleted"
    redirect_to locations_path
    end
    
end
