#!/bin/ruby
require 'active_data'
require 'recursive-open-struct'
require "forwardable"
require 'net/http/persistent'
require 'nokogiri'
require 'savon'

require 'correios_api/api'
require 'correios_api/client'
require 'correios_api/config'
require 'correios_api/version'
require 'correios_api/response'

module CorreiosETC
	class << self

    extend Forwardable

    def_delegators :configuration, :cnpj, :user, :password, :administrative_code, :contract, :code_service, :card, :environment

		def configuration
			@configuration ||= Config.new
		end

		def configure(&block)
			yield configuration
		end
	end
end

