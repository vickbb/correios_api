module CorreiosETC
	class Client

		attr_accessor :env
		attr_reader :client

		def initialize(env = CorreiosETC.environment)
			@uri = get_base_uri
	    @env = env.to_sym

			@client = Savon.client(opts)
		end

		def development?
			env == :development
		end

		def production?
			env == :production
		end

		def opts
			options = {adapter: :net_http_persistent, wsdl: @uri, :ssl_verify_mode=> :none, open_timeout: 30, read_timeout: 30 }

			options.merge!({ headers: { 'SOAPAction' => '' }})

			options
		end

		def call_request(method, message)
			resp = @client.call method, message: message

			Response.new resp.http.code, resp.body
		end

		private
		def get_base_uri
			if production?
			else
				"https://apphom.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl"
			end
		end
	end
end