class OperatingsController < ApplicationController
     #showing all user
    def index
    @operating = Operating.all 
    end
            
            
    def show
    @operating= Operating.find(params[:id])
    end
        
     #display form 
    def new
     @operating = Operating.new
    end
         #creating new comany record
         
    def create
     @Operating = Operating.new(operate)
    if  @Operating.save
    flash[:success] = "A record add been succefully deleted"
    redirect_to operatings_path
    else
      render 'new'
    end
    end

        #strong parameters
    def operate
    params.require(:operating).permit(:operating_company_name, :address, :year_formed, :other_operational_countries, :about_company, :current_focus, :incumbent_irm_contractor, :irm_frame_agreements, :estimated_irm_budget)
    end
    

      # edit a user
      def edit
        @operating = Operating.find(params[:id])
      end
      
     #upadat user  
      def update
        @operating = Operating.find(params[:id])
        if @operating.update_attributes(operate)
           flash[:success] = "Services form updated"
           redirect_to operatings_path
        else
           render'edit'
        end
      end
    

           #deleting a record
    def destroy
    Operating.find(params[:id]).destroy
    flash[:success] = "A record add been successfully deleted"
    redirect_to services_path
    end
end
