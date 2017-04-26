class Fact < ApplicationRecord
	def self.retrieve(num)
		url = "http://catfacts-api.appspot.com/api/facts?number=#{num}"
		response = HTTParty.get(url)
		parsed = JSON.parse(response)
		cat_facts_test = parsed["facts"]
		# binding.pry
		cat_facts = JSON.parse(response)["facts"]
	end
end
