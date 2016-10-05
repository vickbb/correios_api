module CorreiosETC
  module Methods
    class DigitoVerificadorEtiquetas
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(etiquetas)
        digito = {usuario: CorreiosETC.user, senha: CorreiosETC.password, etiquetas: etiquetas}
        response = client.call_request :gera_digito_verificador_etiquetas, digito

        return response.gera_digito_verificador_etiquetas_response.return
      end

    end
  end
end