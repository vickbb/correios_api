module CorreiosETC
  module Methods
    class FechaPlp
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(xml, id_plp_client, etiquetas)
        plp = { xml: xml, idPlpCliente: id_plp_client, listaEtiquetas: etiquetas, usuario: CorreiosETC.user, senha: CorreiosETC.password }

        response = client.call_request :fecha_plp_varios_servicos, plp

        return response
      end

    end
  end
end