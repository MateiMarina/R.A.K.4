class ContractsController < ApplicationController
      
      #showing all user
    def index
    @contract=Contract.all 
    
    end
            
            
    def show
    @contract = Contract.find(params[:id])
    end
        
        #display form 
    def new
    @contract=Contract.new
    end
         #creating new comany record
    def create
     @contract=Contract.new(located)
    if  @contract.save
        flash[:success] = "A record has been successfully deleted"
    redirect_to contracts_path
    else
      render 'new'
    end
    end

        #strong parameters
    def located
    params.require(:contract).permit(:contract_name, :contract_status, :services_rendered, :contract_value, :award_year)
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
    flash[:success] = "A record has been successfully deleted"
    redirect_to contracts_path
    end
    
end
