class OffshoresController < ApplicationController

    #showing all user

    # class Entry
    #   def initialize(title,link)
    #     @title = title
    #     @link = link
    #   end
    #   attr_reader :title
    #   attr_reader :link
    # end
      
     
  
     def index
         @offshore=Offshore.all 
    # @entriesArray= Scrap.all
    #   if params[:search]
    #     @entriesArray = Scrap.search(params[:search]).order("created_at DESC")
    #       else
    #      @entriesArray= Scrap.all.order("created_at DESC")
    #   end
     
 
      #   require 'open-uri'
      #   require 'nokogiri'
      #   doc = Nokogiri::HTML(open("http://data-ogauthority.opendata.arcgis.com/datasets/ab4f6b9519794522aa6ffa6c31617bf8_0?uiTab=table"))
      
      # #@title = doc.css("div.row a").text
      #   entries = doc.css('.block')
      #   @entriesArray = []
      #   entries.each do |row|
      #       Scrap.create!(
      # title: title = row.css('a').text,
      # link:  link = row.css('a')[0]['href'])
      #   @entriesArray << Entry.new(title,link)
    
      # end
 
     end 
            
            
    def show
   
    end
          #display form 
    def new
      @offshore=Offshore.new
    end
         #creating new comany record
    def create
      @offshore = Offshore.new(shore)
    if @offshore.save
        flash[:success] = "A record have been succefully deleted"
    redirect_to offshores_path
    else
      render 'new'
    end
    end

        #strong parameters
    def shore
    params.require(:offshore).permit(:field_id, :field_name, :status, :country, :original_operator, :stakeholders, :discovery_yr, :resource, :field_size_boe, :first_production_yr, :estimated_end_production, :field_life_yrs, :water_depth, :capex_usd,:distance_to_shore_km, :no_manifolds, :no_installed_trees)
    end
    
    
     def edit
        @offshore=Offshore.find(params[:id])
      end
     #upadat user  
      def update
        @offshore=Offshore.find(params[:id])
        if  @offshore.update_attributes(shore)
           flash[:success] = "Offshore Form updated"
           redirect_to offshores_path
        else
            render'edit'
        end
      end
    
           #deleting a record
    def destroy
    Offshore.find(params[:id]).destroy
    flash[:success] = "A record have been succefully deleted"
    redirect_to offshores_path
    end
    
  
end
