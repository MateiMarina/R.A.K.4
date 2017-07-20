class OffshoresController < ApplicationController
    
    
    def index
      @offshore = Offshore.all 
      #   require 'json'
      #   require 'open-uri'
      #   url='http://data-ogauthority.opendata.arcgis.com/datasets/ab4f6b9519794522aa6ffa6c31617bf8_0.geojson'
      #   @result = JSON.parse(open(url).read).with_indifferent_access
      #     @result[:features].each do |feature| 
      #         Offshore.create!(
      #     resource:"#{feature[:properties][:FIELDTYPE]}",
      #     field_status:"#{feature[:properties][:STATUS]}",
      #     original_operator:"#{feature[:properties][:ORIG_OP]}",
      #     field_name:"#{feature[:properties][:FIELDNAME]}",
      #     discovery_yr:"#{feature[:properties][:DISC_DATE]}",
      #     water_depth:"#{feature[:properties][:DEPTH_M]}",
      #     current_operator:"#{feature[:properties][:CURR_OPER]}",
      #     first_production_yr:"#{feature[:properties][:PROD_DATE]}",) 
         
      # end     
    end 
     
    #show a particular record
    def show
      @offshore = Offshore.find(params[:id])
    end
    
    
    
    #diplay a form to add a new record 
    def new
      @offshore = Offshore.new
    end
      
      #creating new comany record
    def create
      @offshore = Offshore.new(shore)
    if @offshore.save
        flash[:success] = "A record has been successfully deleted"
    redirect_to offshores_path
    else
      render 'new'
    end
    end

        #strong parameters
    def shore
        params.require(:offshore).permit(:field_name, :field_status, :original_operator, :current_operator, :discovery_yr, :resource, :field_size_boe, 
        :first_production_yr, :estimated_end_production, :field_life_yrs, :water_depth, :capex_usd,:distance_to_shore_km, :no_manifolds, :no_intalled_trees)
    end
    
       #editing data from the offshore table
     def edit
        @offshore = Offshore.find(params[:id])
     end
     
     
     #upadat offshore table manually
      def update
        @offshore=Offshore.find(params[:id])
        if  @offshore.update_attributes(shore)
           flash[:success] = "Offshore Form updated"
           redirect_to offshores_path
        else
            render'edit'
        end
      end
    
        #deleting a record from the offshore table
    def destroy
    Offshore.find(params[:id]).destroy
    flash[:success] = "A record has been successfully deleted"
    redirect_to offshores_path
    end
end
