module CorreiosETC
  module Methods
    class SolicitaEtiquetas
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(id_servico, qnt, tipo='c')
        etiquetas = {tipoDestinatario: tipo, identificador: CorreiosETC.cnpj, idServico: id_servico, qtdEtiquetas: qnt, usuario: CorreiosETC.user, senha: CorreiosETC.password}
        response = client.call_request :solicita_etiquetas, etiquetas

        return response.solicita_etiquetas_response.return.split(",")
      end

    end
  end
end