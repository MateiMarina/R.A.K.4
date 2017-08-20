class ItemsController < ApplicationController
        before_action :require_login, only: [:index, :edit, :update, :destroy], raise: false
        #showing all record in the campany table
        def index
         @asset=Item.all.paginate(page: params[:page], :per_page => 70)
        end


         #displaying a single record in the Item table
        def show
           @asset = Item.find(params[:id])
        end

         #display asset table
        def new
           @asset = Item.new
        end

        # adding a record in the asset table
        def create
              @asset = Item.new(details)
            if  @asset.save
                flash[:success] = "A record has been successfully added"
            redirect_to items_path
            else
              render 'new'
            end
        end

       #editing  record in the asset table

         def edit
            @asset  = Item.find(params[:id])
         end


        #upadat record in the asset table
         def update
            @asset = Item.find(params[:id])
            if @asset.update_attributes(details)
               flash[:success] = "Asset Form updated"
               redirect_to items_path
            else
               render'edit'
            end
         end


        #strong parameters
        def details
           params.require(:item).permit(:item_name, :item_type, :item_owner,  :current_manager, :previous_manager, :item_specifications)
        end


         #deleting a record from the campany table
        def destroy
            Item.find(params[:id]).destroy
            flash[:success] = "A record has been successfully deleted"
               redirect_to items_path
        end
         #security feature
         def require_login
            unless logged_in?
              flash[:danger] = "You must login to access this page"
              redirect_to login_path
            end
        end

end
