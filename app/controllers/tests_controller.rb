class TestsController < ApplicationController


    def test1

		require 'pg'
 	
 		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
 	      # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
 		  $company_name = Operating.all.collect { |comp| ["#{comp.operating_company_name}"] }
 		  @function = "Select * FROM Query40('#{params[:search]}')"
		  @companies = db.exec(@function)
    end


	def test2
		require 'pg'
		  
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @fields = db.exec("SELECT * from query16('Shell')")
    end


	def test8
		require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @contracts = db.exec("SELECT * from query12('Service')")
    end


    def temporary1
		require 'pg'
		  db = PG.connect(dbname: 'data_scrape_development', user: 'tony', password: 'tony123')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @fields = db.exec("SELECT * from temporary('Shell', 'Chevron')")
    end


end
