require "pg"

db = PG.connect(dbname: 'data_scrape_development', user: 'tony', password: 'tony123')

contracts = db.exec("SELECT * FROM contracts")

contracts.each do |contract|

puts "#{contract['contract_name']} #{contract['contract_value']}"

end
