class ItemsController < ApplicationController
    
    #showing all user
    def index
     @asset=Item.all 
    end
            
            
    def show
      
    end
          #display form 
    def new
      @asset=Item.new
    end
         #creating new comany record
    def create
      @asset= Item.new(details)
    if  @asset.save
        flash[:success] = "A record have been succefully created"
    redirect_to items_path
    else
      render 'new'
    end
    end


    
     def edit
        @asset=Item.find(params[:id])
      end
     #upadat user  
      def update
        @asset=Item.find(params[:id])
        if @asset.update_attributes(details)
           flash[:success] = "Asset Form updated"
           redirect_to items_path
        else
           render'edit'
        end
      end


        #strong parameters
    def details
    params.require(:item).permit(:asset_id, :asset_name, :asset_type, :asset_owner, :country, :current_manager, :previous_manager, :asset_specifications)
    end
           #deleting a record
    def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "A record have been succefully deleted"
    redirect_to items_path
    end
    
  
end
