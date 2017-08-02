class LocationsController < ApplicationController
    
       #showing all the record in the location table
        def index
          @location = Location.all.paginate(page: params[:page], :per_page => 70) 
          
        end
                
        
       #displaying a single  record in the location table        
        def show
           @Location = Location.find(params[:id])
           
        end
        
        
        
         #display the location input form
        def new
            @location = Location.new
            
        end
        
        
        
       #adding record in the location table
        def create
             @location = Location.new(located)
            if  @location.save
                flash[:success] = "A record has been successfully added"
            redirect_to locations_path
            else
              render 'new'
            end
        end
        
    
          #strong parameters
        def located
            params.require(:location).permit(:country, :supra_region, :region)
        end
        
        
        
       #editing a record in the location table
         def edit
            @location = Location.find(params[:id])
         end
         
         
         
         
         #upadating the location table 
          def update
            @location = Location.find(params[:id])
            if  @location.update_attributes(located)
               flash[:success] = "Location form updated"
               redirect_to locations_path
            else
                render'edit'
            end
          end
    
    
    
    
         #deleting a record from the location table
        def destroy
            Location.find(params[:id]).destroy
            flash[:success] = "A record has been successfully deleted"
            redirect_to locations_path
        end
        
end
