class ContractsController < ApplicationController
    
     #showing all user
    def index
    @contract=Contract.all 
    
    end
            
            
    def show
   
    end
          #display form 
    def new
     @contract=Contract.new
    end
         #creating new comany record
    def create
     @contract=Contract.new(located)
    if  @contract.save
        flash[:success] = "A record have been succefully deleted"
    redirect_to contracts_path
    else
      render 'new'
    end
    end

        #strong parameters
    def located
    params.require(:contract).permit(:contract_id, :contract_name, :contract_status, :country, :purchaser_id, :operating_company_id, :service_company_id, :services_rendered, :contract_value, :award_year)
    end
    
    
     def edit
        @contract=Contract.find(params[:id])
      end
     #upadat user  
      def update
        @contract=Contract.find(params[:id])
        if @contract.update_attributes(located)
           flash[:success] = "Contract form updated"
           redirect_to contracts_path
        else
           render'edit'
        end
      end

    
    
           #deleting a record
           
    def destroy
        
    Contract.find(params[:id]).destroy
    flash[:success] = "A record have been succefully deleted"
    redirect_to contracts_path
    end
    
    
    
end
