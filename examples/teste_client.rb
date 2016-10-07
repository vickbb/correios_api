require 'correios_api'
require_relative './configuration'
require 'pry'

api = CorreiosETC::Api.new

cod_serv = 81019
servico = 104672
postages = []

preco_prazo = CorreiosETC::Resource::CalculaPrecoPrazo.new({service: '81019,41068,40096', cep_sender:  '69309560', cep_receiver:  '64023400', weight:  '0,4'})

api.calcula_preco_prazo(preco_prazo)

sender = CorreiosETC::Resource::Sender.new({name: "joao", street: " ef e few fewewf", number: "343", complement: "", district: "", zip_code: "69309560", city: "teresina", state: "RJ", phone: "86994211487"})

receiver = CorreiosETC::Resource::Receiver.new({name: "pedro", street: " ef e few fewewf", number: "343", complement: "", district: "", zip_code: "64023400", city: "teresina", state: "PI", phone: "86994211487", text: 'asdsadsa dassa dsasasda'})

etiquetas = api.solicita_etiquetas(servico, 3)
digitos = api.digito_verificador_etiquetas(etiquetas)

etiquetas.each do |etiqueta, i|
  postages << CorreiosETC::Resource::Postage.new({ticket: etiqueta.gsub(' ', digitos[0]), service: cod_serv, weight: '800', type_object: 1, height: 16, width: 10, length: 10, receiver: receiver})
end
plp = CorreiosETC::Resource::Plp.new({sender: sender, postages: postages})

tickts = etiquetas.map{|x| x.gsub(' ', '')}

fecha_plp = api.fecha_plp(plp.get_xml, 542234, tickts)


call_plp = { xml: plp.get_xml, idPlpCliente: 542234, listaEtiquetas: tickts, usuario: CorreiosETC.user, senha: CorreiosETC.password, cartaoPostagem: CorreiosETC.card }

response = client.call_request :fecha_plp_varios_servicos, call_plp
# solicita_plp = api.solicita_xml_plp(fecha_plp.id)

binding.pry

