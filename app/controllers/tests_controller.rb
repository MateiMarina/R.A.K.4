class TestsController < ApplicationController

	def test1
		require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  @companies = db.exec("SELECT * from getitems3(2)",)
		
	end


	def test8
		require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  @contracts = db.exec("SELECT * from query12('Service')")
    end
end
