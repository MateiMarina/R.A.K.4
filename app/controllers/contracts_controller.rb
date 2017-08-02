class ContractsController < ApplicationController
      
      
     #showing all the record in the cotract table
    def index
      @contract = Contract.all 
    
    end
    
    
            
     #show single record in the contract table       
    def show
      @contract = Contract.find(params[:id])
    end
        
        
        
       #display the contract form
    def new
       @contract = Contract.new
    end
    
    
        #adding record to the contract table 
    def create
         @contract = Contract.new(located)
        if  @contract.save
            flash[:success] = "A record has been successfully added"
        redirect_to contracts_path
        else
          render 'new'
        end
    end



        #strong parameters 
    def located
       params.require(:contract).permit(:contract_name, :contract_status, :services_rendered, :contract_value, :award_year)
    end
    

       # editing contract from cotract table 
     def edit
        @contract = Contract.find(params[:id])
     end
     
     
     #upadat contract table  
      def update
        @contract = Contract.find(params[:id])
        if @contract.update_attributes(located)
           flash[:success] = "Contract form updated"
           redirect_to contracts_path
        else
           render'edit'
        end
      end

    
    
     #deleting a record from contract table
    def destroy
        Contract.find(params[:id]).destroy
        flash[:success] = "A record has been successfully deleted"
        redirect_to contracts_path
    end
    
end
