class LocationsController < ApplicationController
    
  #showing all user
    def index
    @location = Location.all.paginate(page: params[:page], :per_page => 70) 
    end
            
            
    def show
    @Location = Location.find(params[:id])
    end
          #display form 
    def new
     @location = Location.new
    end
         #creating new comany record
    def create
     @location = Location.new(located)
    if  @location.save
        flash[:success] = "A record has been successfully deleted"
    redirect_to locations_path
    else
      render 'new'
    end
    end

        #strong parameters
    def located
    params.require(:location).permit(:country, :supra_region, :region)
    end
    
    
     def edit
        @location = Location.find(params[:id])
     end
     #upadat user  
      def update
        @location = Location.find(params[:id])
        if  @location.update_attributes(located)
           flash[:success] = "Location form updated"
           redirect_to locations_path
        else
            render'edit'
        end
      end

           #deleting a record
    def destroy
    Location.find(params[:id]).destroy
    flash[:success] = "A record has been successfully deleted"
    redirect_to locations_path
    end
    
end
