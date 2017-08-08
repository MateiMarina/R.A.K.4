class TestsController < ApplicationController

    def test1
		require 'pg'
 		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
 	      # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
 		  @function = "Select * FROM Query1('#{params[:operating_company_name]}')"
		  @companies = db.exec(@function)
    end

    def test2
    require 'pg'
      @operating_companies=Operating.all
      db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
      # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
      @assets = db.exec("SELECT * from query2('#{params[:operating]}')")
    end

    def test4
		require 'pg'
      @project_titles=Project.all
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @contracts = db.exec("SELECT * from query4('#{params[:project_name]}')")
    end

    def test5
		require 'pg'
      @stakeholders=Stakeholder.all
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @fields = db.exec("SELECT * from query5('#{params[:stakeholder_name]}')")
    end

    def test6
    require 'pg'
      @stakeholders=Stakeholder.all
      db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
      # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
      @operators = db.exec("SELECT * from query6('#{params[:stakeholder_name]}')")
    end

    def test7
    require 'pg'
      db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
      # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
      @fields = db.exec("SELECT * from query7('1')")
    end

    def test10
		require 'pg'
      @allcompanies=Company.all
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @companies = db.exec("SELECT * from query10('#{params[:company_name]}')")
    end

    def test12
		require 'pg'
      @operating_companies=Operating.all
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @fields = db.exec("SELECT * from query9('#{params[:operating_company_name]}')")
    end

	# def test8
	# 	require 'pg'
	# 	  db = PG.connect(dbname: 'data_scraper1_development', user: 'matteo', password: '')
	# 	  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
	# 	  @contracts = db.exec("SELECT * from temporary('#{params[:operating_company_name]}')")
  #   end

    def project
		require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  # HEROKU VARIABLES TO HIDE THE ABOVE SENSITIVE INFO -> TO DO
		  @projects = "SELECT * from projects3('#{params[:search]}', '#{params[:search1]}')"
		  @fields = db.exec(@projects)
    end

end
