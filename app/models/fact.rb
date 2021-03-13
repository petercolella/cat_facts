class Fact < ApplicationRecord
	def self.retrieve(num)
		url = "https://catfact.ninja/facts?limit=#{num}"
		response = HTTParty.get(url)
		parsed = JSON.parse(response.body)
		cat_facts_test = parsed["data"]
		# binding.pry
		cat_facts = JSON.parse(response.body)["data"]
	end
end
