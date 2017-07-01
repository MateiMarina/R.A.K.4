class ServicesController < ApplicationController

 
    
    
    #showing all user
    def index
    @service=Service.all 
    end
            
            
    def show
    @service=Service.find(params[:id])
    end
          #display form 
    def new
     @service=Service.new
    end
         #creating new comany record
    def create
     @service = Service.new(sp_company)
    if  @service.save
        flash[:success] = "A record add been succefully deleted"
    redirect_to services_path
    else
      render 'new'
    end
    end

        #strong parameters
    def sp_company
    params.require(:service).permit(:service_company_id, :service_company_name, :country, :address, :year_formed, :other_operational_countries, :about_company, :current_focus, :services, :estimated_booking, :financial_status)
    end
    
      # edit a user
      def edit
        @service = Service.find(params[:id])
      end
     #upadat user  
      def update
        @service = Service.find(params[:id])
        if @service.update_attributes(sp_company)
           flash[:success] = "Services form updated"
           redirect_to services_path
        else
           render'edit'
        end
      end
    

           #deleting a record
    def destroy
    Service.find(params[:id]).destroy
    flash[:success] = "A record add been succefully deleted"
    redirect_to services_path
    end
    
end
