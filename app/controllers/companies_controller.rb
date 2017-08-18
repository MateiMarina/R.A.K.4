class CompaniesController < ApplicationController
    
        before_action :require_login, only: [:index, :edit, :update, :destroy], raise: false
       #showing all record in the campany table
        def index
          @company = Company.all.paginate(page: params[:page], :per_page => 70) 
        end
                
        
        #showing single reecord in the company table        
        def show
          @comanay = Company.find(params[:id])
        end
             
             
             
        #display input form of the campany table
        def new
          @company = Company.new
        end
        
        
        
         #saving a new record to the company table
        def create
             @company = Company.new(comy)
            if  @company.save
                flash[:success] = "A record has been successfully added"
            redirect_to companies_path
            else
              render 'new'
            end
        end
        
        
    
         #strong parameters
        def comy
        params.require(:company).permit(:company_name, :company_type)
        end
        
        
        
         # editing  a record the compay table
         def edit
            @company = Company.find(params[:id])
         end
         
         
         
         #upadat a record in the comapy table
          def update
            @company = Company.find(params[:id])
            if  @location.update_attributes(located)
               flash[:success] = "Location form updated"
               redirect_to companies_path
            else
                render'edit'
            end
          end
    
    
    
        #deleting a record from company table 
        def destroy
            Company.find(params[:id]).destroy
            flash[:success] = "A record has been successfully deleted"
            redirect_to companies_path
        end
        
        
        #security feature
         def require_login
            unless logged_in?
              flash[:danger] = "You must login to access this page"
              redirect_to login_path 
            end
         end
    
end
