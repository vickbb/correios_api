module CorreiosETC
  module Methods
    class SolicitaXmlPlp
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(id_plp)
        plp = { idPlpMaster: id_plp, usuario: CorreiosETC.user, senha: CorreiosETC.password }

        response = client.call_request :solicita_xml_plp, plp

        return response.solicita_xml_plp_response.return
      end

    end
  end
end