class CompaniesController < ApplicationController
    
       
   #showing all record in the campany table
    def index
      @company = Company.all.paginate(page: params[:page], :per_page => 70) 
    end
            
    
    #showing single reecord in the company table        
    def show
      @comanay = Company.find(params[:id])
    end
         
         
    #display input form
    def new
      @company = Company.new
    end
    
    
    
     #adding a new comany record
    def create
         @company = Company.new(comy)
        if  @company.save
            flash[:success] = "A record has been successfully added"
        redirect_to locations_path
        else
          render 'new'
        end
    end
    
    

     #strong parameters
    def comy
    params.require(:company).permit(:company_name, :company_type)
    end
    
    
    
     # editing the compay table
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



    #deleting a record from company table 
    def destroy
        Company.find(params[:id]).destroy
        flash[:success] = "A record has been successfully deleted"
        redirect_to locations_path
    end
    
end
