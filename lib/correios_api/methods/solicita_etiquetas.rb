module CorreiosETC
  module Methods
    class SolicitaEtiquetas
      attr_reader :client

      def initialize
        @client = CorreiosETC::Client.new
      end

      def call(id_servico, qnt, tipo = 'c')
        etiquetas = {tipoDestinatario: tipo, identificador: CorreiosETC.cnpj, idServico: id_servico, qtdEtiquetas: qnt, usuario: CorreiosETC.user, senha: CorreiosETC.password}
        response = client.call_request :solicita_etiquetas, etiquetas
        tickets = []
        tickets_range = response.solicita_etiquetas_response.return.split(",")
        a1 = tickets_range[0].gsub(/[A-z\s]/, '').to_i
        a2 = tickets_range[1].gsub(/[A-z\s]/, '').to_i
        count = a2 - a1 + 1
        count.times do |i|
          tickets << tickets_range[0].gsub(/\d/, '').gsub(' ', "#{a1+i} ")
        end

        return tickets
      end

    end
  end
end