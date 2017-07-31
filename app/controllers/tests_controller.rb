class TestsController < ApplicationController

	def test1
		require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @companies = db.exec("SELECT * from getitems3(1)",)
		
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
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @fields = db.exec("SELECT * from temporary('Shell', 'Chevron')")
    end


end
