class Startup
		include HTTParty
		require_relative '../hooks/startup_hook'
		base_uri "https://61ea10457bc0550017bc6537.mockapi.io"

		def initialize(body)
				@options = {:body => body}
				@options2 = {}
		end

		def postStartup
				self.class.post("/teste", @options)
		end

		def getStartup (id)
			self.class.get("/teste/#{id}", @options2)
		end

		def putStartup (id)
			self.class.put("/teste/#{id}", @options)
		end

		def deleteStartup (id)
			self.class.delete("/teste/#{id}", @options2)
		end
	end