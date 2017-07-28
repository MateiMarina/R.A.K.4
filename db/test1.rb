require 'pg'
		  db = PG.connect(dbname: 'data_scraper1_development', user: 'matei', password: 'matei1986')
		  @companies = db.exec ("SELECT getitems()")

		   @companies.each do |row|

		   puts "#{row}"
		   end