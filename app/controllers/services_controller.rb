class ServicesController < ApplicationController
      
        before_action :require_login, only: [:index, :edit, :update, :destroy], raise: false
         
        #showing all the record in the service table
        def index
          @service = Service.all.paginate(page: params[:page], :per_page => 70) 
        end
               
                
        # display a single record in the service table     
        def show
          @service = Service.find(params[:id])
        end
        
        
         #display the the sevice input form
        def new
          @service = Service.new
        end
        
        
        
          #creating new comany record
        def create
             @service = Service.new(sp_company)
            if  @service.save
                flash[:success] = "A record add been succefully added"
            redirect_to services_path
            else
              render 'new'
            end
        end
    
    
    
         #strong parameters
        def sp_company
           params.require(:service).permit(:service_company_name, :address, :year_formed, :other_operational_countries, :about_company, :current_focus, :services, :estimated_booking, :financial_status)
        end
        
    
         # edit the service table
          def edit
            @service = Service.find(params[:id])
          end
          
          
          
         #upadat a record in the service table 
          def update
            @service = Service.find(params[:id])
            if @service.update_attributes(sp_company)
               flash[:success] = "Services form updated"
               redirect_to services_path
            else
               render'edit'
            end
          end
        
    
        #deleting a record the service table
        def destroy
            Service.find(params[:id]).destroy
            flash[:success] = "A record add been successfully deleted"
            redirect_to services_path
        end
        
        
        
     #security feature
         def require_login
            unless logged_in?
              flash[:danger] = "You must login to access this page"
              redirect_to login_path 
            end
        end
        
end
