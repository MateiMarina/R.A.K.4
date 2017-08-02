class OperatingsController < ApplicationController
    
    
         #showing all records in the operating table 
        def index
        @operating = Operating.all.paginate(page: params[:page], :per_page => 70) 
        end
                
                
                
         # displaying a single record in the operating table       
        def show
        @operating = Operating.find(params[:id])
        
        end
        
        
        
            
         #display operating input form
        def new
         @operating = Operating.new
         
        end
        
        
        
        
         #saving a new record to the operaing tablle
        def create
             @operating = Operating.new(op_company)
            if  @operating.save
                flash[:success] = "A record add been succefully added"
            redirect_to operatings_path
            else
              render 'new'
            end
        end
        
        
    
            #strong parameters
        def op_company
        params.require(:operating).permit(:operating_company_name, :address, :year_formed, :other_operational_countries, :about_company, :current_focus, :incumbent_irm_contractor, :irm_frame_agreements, :estimated_irm_budget)
        end
        
        
        
    
          # edit a operating table
          def edit
            @operating = Operating.find(params[:id])
            
          end
          
          
          
          
         #upadat operating table 
          def update
            @operating = Operating.find(params[:id])
            if @operating.update_attributes(op_comapany)
               flash[:success] = "Services form updated"
               redirect_to operatings_path
            else
               render'edit'
            end
          end
        
        
    
        #deleting a record from the operating table
        def destroy
            Operating.find(params[:id]).destroy
            flash[:success] = "A record add been successfully deleted"
            redirect_to operatings_path
        end
        
        
end
