require 'correios_api'
require_relative './configuration'
require 'pry'

client = CorreiosETC::Client.new

cep = {cep: '64023400'}

busca_cliente = {idContrato: CorreiosETC.contract, idCartaoPostagem: CorreiosETC.card, usuario: CorreiosETC.user, senha: CorreiosETC.password }

etiquetas = {tipoDestinatario: 'c', identificador: CorreiosETC.cnpj, idServico: '104672', qtdEtiquetas: 2, usuario: CorreiosETC.user, senha: CorreiosETC.password}

result_cep = client.call_request :consulta_cep, cep

result_client = client.call_request :busca_cliente, busca_cliente

result_etiqueta = client.call_request :solicita_etiquetas, etiquetas

binding.pry

