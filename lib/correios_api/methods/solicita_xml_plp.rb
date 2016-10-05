module CorreiosETC
  module Methods
    class SolicitaXmlPlp
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(id_plp)
        plp = { idPlpMaster: '1234567', usuario: CorreiosETC.user, senha: CorreiosETC.password }

        response = client.call_request :solicita_xml_plp, plp

        return response.solicita_xml_plp_response.return
      end

    end
  end
end