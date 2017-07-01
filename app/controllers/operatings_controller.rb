class OperatingsController < ApplicationController

   
    
     #showing all user
    def index
    @operating=Operating.all 
    end
            
    def show
   
    end
          #display form 
    def new
    @operating=Operating.new
    end
         #creating new comany record
    def create
    @operating = Operating.new(op_company)
    if @operating.save
        flash[:success] = "A recorded have been succefully Saved"
    redirect_to operatings_path
    else
      render 'new'
    end
    end
        #strong parameters
    def op_company
    params.require(:operating).permit(:operating_company_id, :operating_company_name, :country, :address, :year_formed, :other_operational_countries, :about_company, :current_focus, :incumbent_irm_contractor, :irm_frame_agreements, :estimated_irm_budgets)
    end
    
    
     def edit
        @operating=Operating.find(params[:id])
      end
     #upadat user  
      def update
        @operating=Operating.find(params[:id])
        if @operating.update_attributes(op_company)
           flash[:success] = "Operating Form updated"
           redirect_to operatings_path
        else
            render'edit'
        end
      end
    
           #deleting a record
    def destroy
    Operating.find(params[:id]).destroy
    flash[:success] = "A record have been succefully deleted"
    redirect_to operatings_path
    end
    
end
