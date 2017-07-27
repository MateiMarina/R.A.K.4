            class VesselsController < ApplicationController
                class Entry
                      
                  def initialize(lontitude,status,flag,ais_vessel,imo_number,polaris)
                    @polaris = polaris
                    @lontitude = lontitude
                    @status = status
                    @flag = flag
                    @ais_vessel = ais_vessel
                    @imo_number = imo_number
                  end
                  attr_reader :lontitude
                  attr_reader :status
                  attr_reader :flag
                  attr_reader :ais_vessel
                  attr_reader :imo_number
                  attr_reader :polaris
                end
                    
                 def index
                    require 'open-uri'
                    require 'nokogiri'
                    doc = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:184208/mmsi:232585000/vessel:BIBBY%20POLARIS/"))
                    sap = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:285196/mmsi:248484000/vessel:BIBBY%20SAPPHIRE"))
                    topaz = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:462542/mmsi:372294000/vessel:BIBBY%20TOPAZ"))
                    contructor = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:118340/mmsi:205599000/vessel:CONSTRUCTOR"))
                    antlantis = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:712895/mmsi:9441221/vessel:HARKAND%20ATLANTIS"))
                    vinci = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:712896/imo:9441233"))
                    eagle = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:752849/mmsi:636010639/vessel:SEVEN%20EAGLE"))
                    rock_water = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:369793/mmsi:8211746/vessel:DSV%20ROCKWATER%201"))
                    seven_anlantic = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:194818/mmsi:235071342/vessel:SEVEN%20ATLANTIC"))
                    seven_discovery= Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:197172/mmsi:235083664/vessel:SEVEN%20DISCOVERY"))
                    seven_falcon= Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:197371/mmsi:235084424/vessel:SEVEN%20FALCON"))
                    seven_opsrey= Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:752901/mmsi:636010844/vessel:SEVEN%20OSPREY"))
                    seven_oplican = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:372312/mmsi:311007000/vessel:SEVEN%20PELICAN"))
                    deep_artic = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:372931/mmsi:311023800/vessel:DEEP%20ARCTIC"))
                    wellservice = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:183949/mmsi:232287000/vessel:WELLSERVICER"))
                    scandi = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:370684/mmsi:309969000/vessel:SKANDI%20ACHIEVER"))
                    enhancer = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:193278/mmsi:235062421/vessel:WELL%20ENHANCER"))
                    seawell = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:183810/mmsi:232159000/vessel:SEAWELL"))
                    willchief = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:369049/imo:8304799"))
                    endurer = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:417908/mmsi:356019000/vessel:MERMAID%20ENDURER"))
                    pugasus = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:1040343/mmsi:636014212/vessel:TOISA%20PEGASUS"))
                    paladin = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:192704/mmsi:235059213/vessel:TOISA%20PALADIN"))
                    installer = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:374080/mmsi:311073300/vessel:SBM%20INSTALLER"))
                    kestrell = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:3929157/mmsi:235103286/vessel:SEVEN%20KESTREL"))
                    explorere = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:4184008/mmsi:311000411/vessel:DEEP%20EXPLORER"))
                    
                     #topaz = Nokogiri::HTML(open(""))
                  
                   #@title = doc.css("div.row a").text
                    entries = doc.css('body')
                    @entriesArray = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5)> span:nth-child(2) > strong').text
                    flag = doc.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = doc.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number = doc.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = doc.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @entriesArray << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                
                 
                 
                    entries = sap.css('body')
                    @entries = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @entries << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                    entries = topaz.css('body')
                    @topaz = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @topaz << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   
                    entries = contructor.css('body')
                    @contructor = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @contructor << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   entries = antlantis.css('body')
                    @antlantis = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @antlantis << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   
                   entries = vinci.css('body')
                    @vinci = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @vinci << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                    entries = eagle.css('body')
                    @eagle = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @eagle << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   
                    entries = rock_water.css('body')
                    @rock_water = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @rock_water << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                    entries = seven_anlantic.css('body')
                    @seven_anlantic = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seven_anlantic << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
            
            
                    entries = seven_discovery.css('body')
                    @seven_discovery = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seven_discovery << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   
                    entries = seven_falcon.css('body')
                    @seven_falcon = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seven_falcon << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                    entries = seven_oplican.css('body')
                    @seven_oplican = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seven_oplican << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
            
                    entries = seven_opsrey.css('body')
                    @seven_opsrey = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seven_opsrey << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                   end
                   
                   
                   
                    entries = deep_artic.css('body')
                    @deep_artic= []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @deep_artic << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                   
                    entries = wellservice.css('body')
                    @wellservice = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @wellservice << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                   
                    entries = scandi.css('body')
                    @scandi = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    @scandi<< Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                   
                    entries = enhancer.css('body')
                    @enhancer = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @enhancer << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                    entries = seawell.css('body')
                    @seawell = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @seawell << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                   
                    entries = willchief.css('body')
                    @willchief= []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @willchief << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                  
                   
                    entries = endurer.css('body')
                    @endurer = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @endurer<< Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                
                    entries = pugasus.css('body')
                    @pugasus = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @pugasus << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                     
                    entries = paladin.css('body')
                     
                    @paladin = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @paladin << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                  entries = installer.css('body')
                  @installer = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @installer << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                  entries = kestrell.css('body')
                  @kestrell = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @kestrell << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                  entries = explorere.css('body')
                  @explorere = []
                    entries.each do |row|
                    lontitude = row.css('.details_data_link').text
                    status = row.css('div.table-cell.cell-full.collapse-768 > div:nth-child(5) > span:nth-child(2) > strong').text
                    flag = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(4)>b').text
                    ais_vessel = row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(5)>b').text
                    imo_number =row.css('div.bg-info.bg-light.padding-10.radius-4.text-left > div > div:nth-child(1) > div:nth-child(1)>b').text
                    polaris = row.css('div.table-cell.text-overflow.text-left.collapse-768 > div:nth-child(1)').text
                    
                    @explorere << Entry.new(lontitude,status,flag,ais_vessel,imo_number,polaris)
                  end
                   
                 end	
            
            end
