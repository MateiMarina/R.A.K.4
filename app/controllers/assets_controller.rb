class AssetsController < ApplicationController
    
  
    
    
    
    #showing all user
    def index
     @asset=Asset.all 
    end
            
            
    def show
   
    end
          #display form 
    def new
      @asset=Asset.new
    end
         #creating new comany record
    def create
      @asset= Asset.new(my_asset)
    if   @asset.save
        flash[:success] = "A record have been succefully deleted"
    redirect_to root_path
    else
      render 'new'
    end
    end

        #strong parameters
    def my_asset
    params.require(:asset).permit(:asset_id, :asset_name, :asset_type, :asset_owner, :country, :current_manager, :previous_manager, :asset_specifications)
    end
           #deleting a record
    def destroy
    Asset.find(params[:id]).destroy
    flash[:success] = "A record have been succefully deleted"
    redirect_to root_path
    end
    
  
end
